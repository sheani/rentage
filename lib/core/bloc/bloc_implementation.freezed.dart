// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc_implementation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DataStateTearOff {
  const _$DataStateTearOff();

// ignore: unused_element
  _DataState<T> call<T>(
      {bool loading = false,
      T data,
      @nullable bool concat = false,
      bool error = false,
      String errorMsg}) {
    return _DataState<T>(
      loading: loading,
      data: data,
      concat: concat,
      error: error,
      errorMsg: errorMsg,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DataState = _$DataStateTearOff();

/// @nodoc
mixin _$DataState<T> {
  bool get loading;
  T get data;
  @nullable
  bool get concat;
  bool get error;
  String get errorMsg;

  $DataStateCopyWith<T, DataState<T>> get copyWith;
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res>;
  $Res call(
      {bool loading,
      T data,
      @nullable bool concat,
      bool error,
      String errorMsg});
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res> implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  final DataState<T> _value;
  // ignore: unused_field
  final $Res Function(DataState<T>) _then;

  @override
  $Res call({
    Object loading = freezed,
    Object data = freezed,
    Object concat = freezed,
    Object error = freezed,
    Object errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed ? _value.loading : loading as bool,
      data: data == freezed ? _value.data : data as T,
      concat: concat == freezed ? _value.concat : concat as bool,
      error: error == freezed ? _value.error : error as bool,
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
abstract class _$DataStateCopyWith<T, $Res>
    implements $DataStateCopyWith<T, $Res> {
  factory _$DataStateCopyWith(
          _DataState<T> value, $Res Function(_DataState<T>) then) =
      __$DataStateCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {bool loading,
      T data,
      @nullable bool concat,
      bool error,
      String errorMsg});
}

/// @nodoc
class __$DataStateCopyWithImpl<T, $Res> extends _$DataStateCopyWithImpl<T, $Res>
    implements _$DataStateCopyWith<T, $Res> {
  __$DataStateCopyWithImpl(
      _DataState<T> _value, $Res Function(_DataState<T>) _then)
      : super(_value, (v) => _then(v as _DataState<T>));

  @override
  _DataState<T> get _value => super._value as _DataState<T>;

  @override
  $Res call({
    Object loading = freezed,
    Object data = freezed,
    Object concat = freezed,
    Object error = freezed,
    Object errorMsg = freezed,
  }) {
    return _then(_DataState<T>(
      loading: loading == freezed ? _value.loading : loading as bool,
      data: data == freezed ? _value.data : data as T,
      concat: concat == freezed ? _value.concat : concat as bool,
      error: error == freezed ? _value.error : error as bool,
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

/// @nodoc
class _$_DataState<T> implements _DataState<T> {
  const _$_DataState(
      {this.loading = false,
      this.data,
      @nullable this.concat = false,
      this.error = false,
      this.errorMsg})
      : assert(loading != null),
        assert(error != null);

  @JsonKey(defaultValue: false)
  @override
  final bool loading;
  @override
  final T data;
  @JsonKey(defaultValue: false)
  @override
  @nullable
  final bool concat;
  @JsonKey(defaultValue: false)
  @override
  final bool error;
  @override
  final String errorMsg;

  @override
  String toString() {
    return 'DataState<$T>(loading: $loading, data: $data, concat: $concat, error: $error, errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataState<T> &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.concat, concat) ||
                const DeepCollectionEquality().equals(other.concat, concat)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.errorMsg, errorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsg, errorMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(concat) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(errorMsg);

  @override
  _$DataStateCopyWith<T, _DataState<T>> get copyWith =>
      __$DataStateCopyWithImpl<T, _DataState<T>>(this, _$identity);
}

abstract class _DataState<T> implements DataState<T> {
  const factory _DataState(
      {bool loading,
      T data,
      @nullable bool concat,
      bool error,
      String errorMsg}) = _$_DataState<T>;

  @override
  bool get loading;
  @override
  T get data;
  @override
  @nullable
  bool get concat;
  @override
  bool get error;
  @override
  String get errorMsg;
  @override
  _$DataStateCopyWith<T, _DataState<T>> get copyWith;
}
