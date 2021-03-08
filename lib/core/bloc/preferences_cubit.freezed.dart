// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'preferences_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PreferencesState _$PreferencesStateFromJson(Map<String, dynamic> json) {
  return _PreferencesState.fromJson(json);
}

/// @nodoc
class _$PreferencesStateTearOff {
  const _$PreferencesStateTearOff();

// ignore: unused_element
  _PreferencesState call(
      {@nullable String token = null, @nullable String refreshToken = null}) {
    return _PreferencesState(
      token: token,
      refreshToken: refreshToken,
    );
  }

// ignore: unused_element
  PreferencesState fromJson(Map<String, Object> json) {
    return PreferencesState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PreferencesState = _$PreferencesStateTearOff();

/// @nodoc
mixin _$PreferencesState {
  @nullable
  String get token;
  @nullable
  String get refreshToken;

  Map<String, dynamic> toJson();
  $PreferencesStateCopyWith<PreferencesState> get copyWith;
}

/// @nodoc
abstract class $PreferencesStateCopyWith<$Res> {
  factory $PreferencesStateCopyWith(
          PreferencesState value, $Res Function(PreferencesState) then) =
      _$PreferencesStateCopyWithImpl<$Res>;
  $Res call({@nullable String token, @nullable String refreshToken});
}

/// @nodoc
class _$PreferencesStateCopyWithImpl<$Res>
    implements $PreferencesStateCopyWith<$Res> {
  _$PreferencesStateCopyWithImpl(this._value, this._then);

  final PreferencesState _value;
  // ignore: unused_field
  final $Res Function(PreferencesState) _then;

  @override
  $Res call({
    Object token = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
    ));
  }
}

/// @nodoc
abstract class _$PreferencesStateCopyWith<$Res>
    implements $PreferencesStateCopyWith<$Res> {
  factory _$PreferencesStateCopyWith(
          _PreferencesState value, $Res Function(_PreferencesState) then) =
      __$PreferencesStateCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String token, @nullable String refreshToken});
}

/// @nodoc
class __$PreferencesStateCopyWithImpl<$Res>
    extends _$PreferencesStateCopyWithImpl<$Res>
    implements _$PreferencesStateCopyWith<$Res> {
  __$PreferencesStateCopyWithImpl(
      _PreferencesState _value, $Res Function(_PreferencesState) _then)
      : super(_value, (v) => _then(v as _PreferencesState));

  @override
  _PreferencesState get _value => super._value as _PreferencesState;

  @override
  $Res call({
    Object token = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_PreferencesState(
      token: token == freezed ? _value.token : token as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_PreferencesState implements _PreferencesState {
  const _$_PreferencesState(
      {@nullable this.token = null, @nullable this.refreshToken = null});

  factory _$_PreferencesState.fromJson(Map<String, dynamic> json) =>
      _$_$_PreferencesStateFromJson(json);

  @JsonKey(defaultValue: null)
  @override
  @nullable
  final String token;
  @JsonKey(defaultValue: null)
  @override
  @nullable
  final String refreshToken;

  @override
  String toString() {
    return 'PreferencesState(token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PreferencesState &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(refreshToken);

  @override
  _$PreferencesStateCopyWith<_PreferencesState> get copyWith =>
      __$PreferencesStateCopyWithImpl<_PreferencesState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PreferencesStateToJson(this);
  }
}

abstract class _PreferencesState implements PreferencesState {
  const factory _PreferencesState(
      {@nullable String token,
      @nullable String refreshToken}) = _$_PreferencesState;

  factory _PreferencesState.fromJson(Map<String, dynamic> json) =
      _$_PreferencesState.fromJson;

  @override
  @nullable
  String get token;
  @override
  @nullable
  String get refreshToken;
  @override
  _$PreferencesStateCopyWith<_PreferencesState> get copyWith;
}
