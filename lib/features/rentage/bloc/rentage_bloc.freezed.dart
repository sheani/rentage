// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rentage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RentageEventTearOff {
  const _$RentageEventTearOff();

// ignore: unused_element
  RentageCustomEvent sip() {
    return const RentageCustomEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $RentageEvent = _$RentageEventTearOff();

/// @nodoc
mixin _$RentageEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sip(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sip(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sip(RentageCustomEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sip(RentageCustomEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $RentageEventCopyWith<$Res> {
  factory $RentageEventCopyWith(
          RentageEvent value, $Res Function(RentageEvent) then) =
      _$RentageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RentageEventCopyWithImpl<$Res> implements $RentageEventCopyWith<$Res> {
  _$RentageEventCopyWithImpl(this._value, this._then);

  final RentageEvent _value;
  // ignore: unused_field
  final $Res Function(RentageEvent) _then;
}

/// @nodoc
abstract class $RentageCustomEventCopyWith<$Res> {
  factory $RentageCustomEventCopyWith(
          RentageCustomEvent value, $Res Function(RentageCustomEvent) then) =
      _$RentageCustomEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RentageCustomEventCopyWithImpl<$Res>
    extends _$RentageEventCopyWithImpl<$Res>
    implements $RentageCustomEventCopyWith<$Res> {
  _$RentageCustomEventCopyWithImpl(
      RentageCustomEvent _value, $Res Function(RentageCustomEvent) _then)
      : super(_value, (v) => _then(v as RentageCustomEvent));

  @override
  RentageCustomEvent get _value => super._value as RentageCustomEvent;
}

/// @nodoc
class _$RentageCustomEvent implements RentageCustomEvent {
  const _$RentageCustomEvent();

  @override
  String toString() {
    return 'RentageEvent.sip()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RentageCustomEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sip(),
  }) {
    assert(sip != null);
    return sip();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sip(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sip != null) {
      return sip();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sip(RentageCustomEvent value),
  }) {
    assert(sip != null);
    return sip(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sip(RentageCustomEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sip != null) {
      return sip(this);
    }
    return orElse();
  }
}

abstract class RentageCustomEvent implements RentageEvent {
  const factory RentageCustomEvent() = _$RentageCustomEvent;
}

/// @nodoc
class _$RentageStateTearOff {
  const _$RentageStateTearOff();

// ignore: unused_element
  _RentageState call({DataState<dynamic> auth}) {
    return _RentageState(
      auth: auth,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RentageState = _$RentageStateTearOff();

/// @nodoc
mixin _$RentageState {
  DataState<dynamic> get auth;

  $RentageStateCopyWith<RentageState> get copyWith;
}

/// @nodoc
abstract class $RentageStateCopyWith<$Res> {
  factory $RentageStateCopyWith(
          RentageState value, $Res Function(RentageState) then) =
      _$RentageStateCopyWithImpl<$Res>;
  $Res call({DataState<dynamic> auth});

  $DataStateCopyWith<dynamic, $Res> get auth;
}

/// @nodoc
class _$RentageStateCopyWithImpl<$Res> implements $RentageStateCopyWith<$Res> {
  _$RentageStateCopyWithImpl(this._value, this._then);

  final RentageState _value;
  // ignore: unused_field
  final $Res Function(RentageState) _then;

  @override
  $Res call({
    Object auth = freezed,
  }) {
    return _then(_value.copyWith(
      auth: auth == freezed ? _value.auth : auth as DataState<dynamic>,
    ));
  }

  @override
  $DataStateCopyWith<dynamic, $Res> get auth {
    if (_value.auth == null) {
      return null;
    }
    return $DataStateCopyWith<dynamic, $Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value));
    });
  }
}

/// @nodoc
abstract class _$RentageStateCopyWith<$Res>
    implements $RentageStateCopyWith<$Res> {
  factory _$RentageStateCopyWith(
          _RentageState value, $Res Function(_RentageState) then) =
      __$RentageStateCopyWithImpl<$Res>;
  @override
  $Res call({DataState<dynamic> auth});

  @override
  $DataStateCopyWith<dynamic, $Res> get auth;
}

/// @nodoc
class __$RentageStateCopyWithImpl<$Res> extends _$RentageStateCopyWithImpl<$Res>
    implements _$RentageStateCopyWith<$Res> {
  __$RentageStateCopyWithImpl(
      _RentageState _value, $Res Function(_RentageState) _then)
      : super(_value, (v) => _then(v as _RentageState));

  @override
  _RentageState get _value => super._value as _RentageState;

  @override
  $Res call({
    Object auth = freezed,
  }) {
    return _then(_RentageState(
      auth: auth == freezed ? _value.auth : auth as DataState<dynamic>,
    ));
  }
}

/// @nodoc
class _$_RentageState implements _RentageState {
  const _$_RentageState({this.auth});

  @override
  final DataState<dynamic> auth;

  @override
  String toString() {
    return 'RentageState(auth: $auth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RentageState &&
            (identical(other.auth, auth) ||
                const DeepCollectionEquality().equals(other.auth, auth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(auth);

  @override
  _$RentageStateCopyWith<_RentageState> get copyWith =>
      __$RentageStateCopyWithImpl<_RentageState>(this, _$identity);
}

abstract class _RentageState implements RentageState {
  const factory _RentageState({DataState<dynamic> auth}) = _$_RentageState;

  @override
  DataState<dynamic> get auth;
  @override
  _$RentageStateCopyWith<_RentageState> get copyWith;
}
