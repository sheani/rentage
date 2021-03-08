import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentage/core/bloc/bloc_implementation.dart';

part 'rentage_bloc.freezed.dart';

@freezed
abstract class RentageEvent implements _$RentageEvent, BlocWithFetchEvent {
  const factory RentageEvent.sip() = RentageCustomEvent;
}

@freezed
abstract class RentageState with _$RentageState {
  const factory RentageState({
    DataState auth,
  }) = _RentageState;
}

class RentageBloc extends BlocWithFetch<RentageEvent, RentageState> {
  RentageBloc() : super(const RentageState());

  @override
  Stream<RentageState> mapEventToState(
    BlocWithFetchEvent event,
  ) async* {
    yield* super.mapEventToState(event);
    if (event is RentageEvent) {
      yield* event.when(
        sip: _sip,
      );
    }
  }

  Stream<RentageState> _init() async* {
    yield state.copyWith();
  }
}