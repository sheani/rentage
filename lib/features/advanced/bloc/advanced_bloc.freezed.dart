// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'advanced_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AdvancedEventTearOff {
  const _$AdvancedEventTearOff();

// ignore: unused_element
  AdvancedApplyEvent sip() {
    return const AdvancedApplyEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $AdvancedEvent = _$AdvancedEventTearOff();

/// @nodoc
mixin _$AdvancedEvent {
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
    @required Result sip(AdvancedApplyEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sip(AdvancedApplyEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AdvancedEventCopyWith<$Res> {
  factory $AdvancedEventCopyWith(
          AdvancedEvent value, $Res Function(AdvancedEvent) then) =
      _$AdvancedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdvancedEventCopyWithImpl<$Res>
    implements $AdvancedEventCopyWith<$Res> {
  _$AdvancedEventCopyWithImpl(this._value, this._then);

  final AdvancedEvent _value;
  // ignore: unused_field
  final $Res Function(AdvancedEvent) _then;
}

/// @nodoc
abstract class $AdvancedApplyEventCopyWith<$Res> {
  factory $AdvancedApplyEventCopyWith(
          AdvancedApplyEvent value, $Res Function(AdvancedApplyEvent) then) =
      _$AdvancedApplyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdvancedApplyEventCopyWithImpl<$Res>
    extends _$AdvancedEventCopyWithImpl<$Res>
    implements $AdvancedApplyEventCopyWith<$Res> {
  _$AdvancedApplyEventCopyWithImpl(
      AdvancedApplyEvent _value, $Res Function(AdvancedApplyEvent) _then)
      : super(_value, (v) => _then(v as AdvancedApplyEvent));

  @override
  AdvancedApplyEvent get _value => super._value as AdvancedApplyEvent;
}

/// @nodoc
class _$AdvancedApplyEvent implements AdvancedApplyEvent {
  const _$AdvancedApplyEvent();

  @override
  String toString() {
    return 'AdvancedEvent.sip()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AdvancedApplyEvent);
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
    @required Result sip(AdvancedApplyEvent value),
  }) {
    assert(sip != null);
    return sip(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sip(AdvancedApplyEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sip != null) {
      return sip(this);
    }
    return orElse();
  }
}

abstract class AdvancedApplyEvent implements AdvancedEvent {
  const factory AdvancedApplyEvent() = _$AdvancedApplyEvent;
}

/// @nodoc
class _$AdvancedStateTearOff {
  const _$AdvancedStateTearOff();

// ignore: unused_element
  _AdvancedState call({DataState<dynamic> auth}) {
    return _AdvancedState(
      auth: auth,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AdvancedState = _$AdvancedStateTearOff();

/// @nodoc
mixin _$AdvancedState {
  DataState<dynamic> get auth;

  $AdvancedStateCopyWith<AdvancedState> get copyWith;
}

/// @nodoc
abstract class $AdvancedStateCopyWith<$Res> {
  factory $AdvancedStateCopyWith(
          AdvancedState value, $Res Function(AdvancedState) then) =
      _$AdvancedStateCopyWithImpl<$Res>;
  $Res call({DataState<dynamic> auth});

  $DataStateCopyWith<dynamic, $Res> get auth;
}

/// @nodoc
class _$AdvancedStateCopyWithImpl<$Res>
    implements $AdvancedStateCopyWith<$Res> {
  _$AdvancedStateCopyWithImpl(this._value, this._then);

  final AdvancedState _value;
  // ignore: unused_field
  final $Res Function(AdvancedState) _then;

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
abstract class _$AdvancedStateCopyWith<$Res>
    implements $AdvancedStateCopyWith<$Res> {
  factory _$AdvancedStateCopyWith(
          _AdvancedState value, $Res Function(_AdvancedState) then) =
      __$AdvancedStateCopyWithImpl<$Res>;
  @override
  $Res call({DataState<dynamic> auth});

  @override
  $DataStateCopyWith<dynamic, $Res> get auth;
}

/// @nodoc
class __$AdvancedStateCopyWithImpl<$Res>
    extends _$AdvancedStateCopyWithImpl<$Res>
    implements _$AdvancedStateCopyWith<$Res> {
  __$AdvancedStateCopyWithImpl(
      _AdvancedState _value, $Res Function(_AdvancedState) _then)
      : super(_value, (v) => _then(v as _AdvancedState));

  @override
  _AdvancedState get _value => super._value as _AdvancedState;

  @override
  $Res call({
    Object auth = freezed,
  }) {
    return _then(_AdvancedState(
      auth: auth == freezed ? _value.auth : auth as DataState<dynamic>,
    ));
  }
}

/// @nodoc
class _$_AdvancedState implements _AdvancedState {
  const _$_AdvancedState({this.auth});

  @override
  final DataState<dynamic> auth;

  @override
  String toString() {
    return 'AdvancedState(auth: $auth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdvancedState &&
            (identical(other.auth, auth) ||
                const DeepCollectionEquality().equals(other.auth, auth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(auth);

  @override
  _$AdvancedStateCopyWith<_AdvancedState> get copyWith =>
      __$AdvancedStateCopyWithImpl<_AdvancedState>(this, _$identity);
}

abstract class _AdvancedState implements AdvancedState {
  const factory _AdvancedState({DataState<dynamic> auth}) = _$_AdvancedState;

  @override
  DataState<dynamic> get auth;
  @override
  _$AdvancedStateCopyWith<_AdvancedState> get copyWith;
}
