import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentage/core/bloc/bloc_implementation.dart';

part 'advanced_bloc.freezed.dart';

@freezed
abstract class AdvancedEvent implements _$AdvancedEvent, BlocWithFetchEvent {
  const factory AdvancedEvent.sip() = AdvancedApplyEvent;
}

@freezed
abstract class AdvancedState with _$AdvancedState {
  const factory AdvancedState({
    DataState auth,
  }) = _AdvancedState;
}

class HomeBloc extends BlocWithFetch<AdvancedEvent, AdvancedState> {
  HomeBloc() : super(const AdvancedState());

  @override
  Stream<AdvancedState> mapEventToState(
      BlocWithFetchEvent event,
      ) async* {
    yield* super.mapEventToState(event);
    if (event is AdvancedEvent) {
      yield* event.when(
        sip: _sip,
      );
    }
  }

  Stream<AdvancedState> _init() async* {
    yield state.copyWith();
  }

  Stream<AdvancedState> _sip() async* {
    yield state.copyWith();
  }
}