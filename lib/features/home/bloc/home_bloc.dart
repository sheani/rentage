import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:rentage/core/bloc/bloc_implementation.dart';

part 'home_bloc.freezed.dart';

@freezed
abstract class HomeEvent implements _$HomeEvent, BlocWithFetchEvent {
  const factory HomeEvent.sip() = SipHomeEvent;
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    DataState auth,
  }) = _HomeState;
}

class HomeBloc extends BlocWithFetch<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState());

  @override
  Stream<HomeState> mapEventToState(
      BlocWithFetchEvent event,
      ) async* {
    yield* super.mapEventToState(event);
    if (event is HomeEvent) {
      yield* event.when(
        sip: _sip,
      );
    }
  }

  Stream<HomeState> _init() async* {
    yield state.copyWith();
  }

  Stream<HomeState> _sip() async* {
    yield state.copyWith();
  }
}