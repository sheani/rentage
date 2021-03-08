import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'bloc_implementation.freezed.dart';

typedef FetchBuilder<T> = T Function(T);
typedef FetchWidgetBuilder<T> = Widget Function(T);

abstract class BlocWithFetch<Event extends BlocWithFetchEvent, State>
    extends Bloc<BlocWithFetchEvent, State>
    with BlocWithFetchMixin<Event, State> {
  BlocWithFetch(State initialState) : super(initialState);
}

abstract class HydratedBlocWithFetch<Event extends BlocWithFetchEvent, State>
    extends HydratedBloc<BlocWithFetchEvent, State>
    with BlocWithFetchMixin<Event, State> {
  HydratedBlocWithFetch(State initialState) : super(initialState);
}

mixin BlocWithFetchMixin<Event extends BlocWithFetchEvent, State>
implements Bloc<BlocWithFetchEvent, State> {
  void fetchError(dynamic error) {}

  void fetchData<T>(
      Future<T> Function() query,
      State Function(DataState<T>) builder, {
        void Function(T) onSuccess,
      }) {
    add(DataChangeEvent<State>(
            (State state) => builder(DataState.doLoading())));
    query().then((T data) {
      add(DataChangeEvent<State>(
              (State state) => builder(DataState.loaded(data))));
      onSuccess?.call(data);
    }).catchError((dynamic error) {
      fetchError(error);
      add(DataChangeEvent<State>(
              (State state) => builder(DataState.failed(error.toString()))));
    });
  }

  @override
  @mustCallSuper
  Stream<State> mapEventToState(BlocWithFetchEvent event) async* {
    if (event is DataChangeEvent<State>) {
      yield event.builder(state);
    }
  }
}

abstract class BlocWithFetchEvent {
  const BlocWithFetchEvent();
}

class DataChangeEvent<State> extends BlocWithFetchEvent {
  const DataChangeEvent(this.builder);

  final FetchBuilder<State> builder;
}

@freezed
abstract class DataState<T> with _$DataState<T> {
  const factory DataState({
    @Default(false) bool loading,
    T data,
    @nullable @Default(false) bool concat,
    @Default(false) bool error,
    String errorMsg,
  }) = _DataState<T>;

  static DataState<T> initial<T>() => DataState<T>();

  static DataState<T> doLoading<T>({T oldData, bool concat}) =>
      DataState<T>(loading: true, data: oldData, concat: concat);

  static DataState<T> loaded<T>(T data) => DataState<T>(data: data);

  static DataState<T> failed<T>(String errorMsg) =>
      DataState<T>(error: true, errorMsg: errorMsg);
}

abstract class _DataWidget<T> extends StatelessWidget {
  const _DataWidget({
    Key key,
    this.state,
    this.builder,
    this.loadingContent,
    this.emptyContent,
  }) : super(key: key);

  final DataState<T> state;
  final FetchWidgetBuilder<T> builder;
  final Widget loadingContent;
  final Widget emptyContent;

  bool isListEmpty(T data) {
    if (data is List) {
      return data.isEmpty;
    }
    return false;
  }

  bool isDataEmpty(T data) => data == null;
}

class StateDataWidget<T> extends _DataWidget<T> {
  const StateDataWidget({
    Key key,
    @required DataState<T> state,
    FetchWidgetBuilder<T> builder,
    Widget loadingContent = const CircularProgressIndicator(),
    Widget emptyContent = const SizedBox.shrink(),
    this.child,
  }) : super(
    key: key,
    state: state,
    builder: builder,
    loadingContent: loadingContent,
    emptyContent: emptyContent,
  );

  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (state == null || state.loading) {
      return loadingContent;
    } else if (isDataEmpty(state.data) || isListEmpty(state.data)) {
      return emptyContent;
    } else {
      return child ?? builder(state.data);
    }
  }
}

class StateDataSliver<T> extends _DataWidget<T> {
  const StateDataSliver({
    Key key,
    @required DataState<T> state,
    FetchWidgetBuilder<T> builder,
    Widget loadingContent = const CircularProgressIndicator(),
    Widget emptyContent = const SizedBox.shrink(),
  }) : super(
    key: key,
    state: state,
    builder: builder,
    loadingContent: loadingContent,
    emptyContent: emptyContent,
  );

  @override
  Widget build(BuildContext context) {
    if (state == null || state.loading) {
      return SliverToBoxAdapter(child: loadingContent);
    } else if (isDataEmpty(state.data) || isListEmpty(state.data)) {
      return SliverToBoxAdapter(child: emptyContent);
    } else {
      return builder(state.data);
    }
  }
}

class StateDataSliverList<T> extends _DataWidget<T> {
  const StateDataSliverList({
    Key key,
    @required DataState<T> state,
    FetchWidgetBuilder<T> builder,
    Widget loadingContent = const CircularProgressIndicator(),
    Widget emptyContent = const SizedBox.shrink(),
    this.loaderBuilder,
  }) : super(
    key: key,
    state: state,
    builder: builder,
    loadingContent: loadingContent,
    emptyContent: emptyContent,
  );

  final Widget Function(T data, Widget loader) loaderBuilder;

  @override
  Widget build(BuildContext context) {
    if (state == null || (state.loading && !state.concat)) {
      return SliverToBoxAdapter(child: loadingContent);
    } else if (!isDataEmpty(state?.data) && (state.concat && state.loading)) {
      return loaderBuilder(state.data, loadingContent);
    } else if (isDataEmpty(state.data) || isListEmpty(state.data)) {
      return SliverToBoxAdapter(child: emptyContent);
    } else {
      return builder(state.data);
    }
  }
}