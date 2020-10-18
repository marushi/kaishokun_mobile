// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trouble_single_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TroubleSingleStateTearOff {
  const _$TroubleSingleStateTearOff();

// ignore: unused_element
  _TroubleSingleState call({int count = 0, String name = ''}) {
    return _TroubleSingleState(
      count: count,
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TroubleSingleState = _$TroubleSingleStateTearOff();

/// @nodoc
mixin _$TroubleSingleState {
  int get count;
  String get name;

  $TroubleSingleStateCopyWith<TroubleSingleState> get copyWith;
}

/// @nodoc
abstract class $TroubleSingleStateCopyWith<$Res> {
  factory $TroubleSingleStateCopyWith(
          TroubleSingleState value, $Res Function(TroubleSingleState) then) =
      _$TroubleSingleStateCopyWithImpl<$Res>;
  $Res call({int count, String name});
}

/// @nodoc
class _$TroubleSingleStateCopyWithImpl<$Res>
    implements $TroubleSingleStateCopyWith<$Res> {
  _$TroubleSingleStateCopyWithImpl(this._value, this._then);

  final TroubleSingleState _value;
  // ignore: unused_field
  final $Res Function(TroubleSingleState) _then;

  @override
  $Res call({
    Object count = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$TroubleSingleStateCopyWith<$Res>
    implements $TroubleSingleStateCopyWith<$Res> {
  factory _$TroubleSingleStateCopyWith(
          _TroubleSingleState value, $Res Function(_TroubleSingleState) then) =
      __$TroubleSingleStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, String name});
}

/// @nodoc
class __$TroubleSingleStateCopyWithImpl<$Res>
    extends _$TroubleSingleStateCopyWithImpl<$Res>
    implements _$TroubleSingleStateCopyWith<$Res> {
  __$TroubleSingleStateCopyWithImpl(
      _TroubleSingleState _value, $Res Function(_TroubleSingleState) _then)
      : super(_value, (v) => _then(v as _TroubleSingleState));

  @override
  _TroubleSingleState get _value => super._value as _TroubleSingleState;

  @override
  $Res call({
    Object count = freezed,
    Object name = freezed,
  }) {
    return _then(_TroubleSingleState(
      count: count == freezed ? _value.count : count as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_TroubleSingleState implements _TroubleSingleState {
  const _$_TroubleSingleState({this.count = 0, this.name = ''})
      : assert(count != null),
        assert(name != null);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: '')
  @override
  final String name;

  @override
  String toString() {
    return 'TroubleSingleState(count: $count, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TroubleSingleState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$TroubleSingleStateCopyWith<_TroubleSingleState> get copyWith =>
      __$TroubleSingleStateCopyWithImpl<_TroubleSingleState>(this, _$identity);
}

abstract class _TroubleSingleState implements TroubleSingleState {
  const factory _TroubleSingleState({int count, String name}) =
      _$_TroubleSingleState;

  @override
  int get count;
  @override
  String get name;
  @override
  _$TroubleSingleStateCopyWith<_TroubleSingleState> get copyWith;
}
