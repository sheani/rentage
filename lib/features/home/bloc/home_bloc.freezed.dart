// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

// ignore: unused_element
  SipHomeEvent sip() {
    return const SipHomeEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
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
    @required Result sip(SipHomeEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sip(SipHomeEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $SipHomeEventCopyWith<$Res> {
  factory $SipHomeEventCopyWith(
          SipHomeEvent value, $Res Function(SipHomeEvent) then) =
      _$SipHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SipHomeEventCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $SipHomeEventCopyWith<$Res> {
  _$SipHomeEventCopyWithImpl(
      SipHomeEvent _value, $Res Function(SipHomeEvent) _then)
      : super(_value, (v) => _then(v as SipHomeEvent));

  @override
  SipHomeEvent get _value => super._value as SipHomeEvent;
}

/// @nodoc
class _$SipHomeEvent with DiagnosticableTreeMixin implements SipHomeEvent {
  const _$SipHomeEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.sip()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.sip'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SipHomeEvent);
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
    @required Result sip(SipHomeEvent value),
  }) {
    assert(sip != null);
    return sip(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sip(SipHomeEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sip != null) {
      return sip(this);
    }
    return orElse();
  }
}

abstract class SipHomeEvent implements HomeEvent {
  const factory SipHomeEvent() = _$SipHomeEvent;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _HomeState call({DataState<dynamic> auth}) {
    return _HomeState(
      auth: auth,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  DataState<dynamic> get auth;

  $HomeStateCopyWith<HomeState> get copyWith;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({DataState<dynamic> auth});

  $DataStateCopyWith<dynamic, $Res> get auth;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

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
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({DataState<dynamic> auth});

  @override
  $DataStateCopyWith<dynamic, $Res> get auth;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object auth = freezed,
  }) {
    return _then(_HomeState(
      auth: auth == freezed ? _value.auth : auth as DataState<dynamic>,
    ));
  }
}

/// @nodoc
class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState({this.auth});

  @override
  final DataState<dynamic> auth;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(auth: $auth)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('auth', auth));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.auth, auth) ||
                const DeepCollectionEquality().equals(other.auth, auth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(auth);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({DataState<dynamic> auth}) = _$_HomeState;

  @override
  DataState<dynamic> get auth;
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
