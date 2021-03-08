import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'bloc_implementation.dart';

typedef QuerySimple<T> = Future<T> Function();
typedef DataChange<T> = T Function(T old);

class FetchBloc<T> extends Bloc<FetchEvent, DataState<T>> {
  FetchBloc({this.defaultQuery}) : super(DataState.initial<T>());

  final QuerySimple<T> defaultQuery;

  static FetchBloc<T> simpleQuery<T>() => FetchBloc<T>();

  static FetchBloc<T> withQuery<T>(QuerySimple<T> query) =>
      FetchBloc<T>(defaultQuery: query);

  void fetchError(dynamic error) {}

  @override
  Stream<DataState<T>> mapEventToState(
      FetchEvent event,
      ) async* {
    if (event is FetchQuery<T>) {
      add(FetchLoadingEvent(refresh: event.refresh));
      final QuerySimple<T> query = event.query ?? defaultQuery;
      query().then((T value) {
        add(FetchLoadedEvent<T>(value));
      }).catchError((dynamic error) {
        add(FetchErrorEvent(error.toString()));
      });
    }
    if (event is FetchLoadingEvent) {
      yield DataState.doLoading<T>(oldData: event.refresh ? state.data : null);
    }

    if (event is FetchLoadedEvent<T>) {
      yield DataState.loaded<T>(event.data);
    }
    if (event is FetchDataChangeEvent<T>) {
      yield DataState.loaded<T>(event.builder(state.data));
    }

    if (event is FetchErrorEvent) {
      yield DataState.failed<T>(event.errorMsg);
    }
  }
}


@immutable
abstract class FetchEvent {}

class FetchQuery<T> extends FetchEvent {
  FetchQuery({this.query, this.refresh = false});

  final QuerySimple<T> query;
  final bool refresh;

  static FetchQuery<T> withQuery<T>(QuerySimple<T> query,
      {bool refresh = false}) {
    return FetchQuery<T>(query: query, refresh: refresh);
  }

  static FetchQuery<T> single<T>() {
    return FetchQuery<T>();
  }
}

class FetchLoadingEvent extends FetchEvent {
  FetchLoadingEvent({this.refresh = false});

  final bool refresh;
}

class FetchLoadedEvent<T> extends FetchEvent {
  FetchLoadedEvent(this.data);

  final T data;
}

typedef dataChange<T> = T Function(T old);

class FetchDataChangeEvent<T> extends FetchEvent {
  FetchDataChangeEvent(this.builder);

  final dataChange<T> builder;

  static FetchDataChangeEvent<T> infer<T>(dataChange<T> builder) {
    return FetchDataChangeEvent<T>(builder);
  }
}

class FetchErrorEvent extends FetchEvent {
  FetchErrorEvent(this.errorMsg);

  final String errorMsg;
}

class FetchBlocBuilder<T> extends StatelessWidget {
  const FetchBlocBuilder({
    @required this.cubit,
    this.builder,
    this.builderState,
    this.loadingContent = const CircularProgressIndicator(),
    this.emptyContent = const SizedBox(),
  });

  final FetchBloc<T> cubit;
  final Widget Function(T data) builder;
  final Widget Function(DataState<T> state) builderState;
  final Widget loadingContent;
  final Widget emptyContent;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchBloc<T>, DataState<T>>(
      cubit: cubit,
      builder: (BuildContext context, DataState<T> state) {
        if (builderState != null) {
          return builderState(state);
        }
        return StateDataWidget<T>(
          state: cubit.state,
          builder: builder,
          loadingContent: loadingContent,
          emptyContent: emptyContent,
        );
      },
    );
  }
}