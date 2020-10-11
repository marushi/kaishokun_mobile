// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cheer_single_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CheerSingleState _$CheerSingleStateFromJson(Map<String, dynamic> json) {
  return _CheerSingleState.fromJson(json);
}

/// @nodoc
class _$CheerSingleStateTearOff {
  const _$CheerSingleStateTearOff();

// ignore: unused_element
  _CheerSingleState call({int count = 0, String name = ''}) {
    return _CheerSingleState(
      count: count,
      name: name,
    );
  }

// ignore: unused_element
  CheerSingleState fromJson(Map<String, Object> json) {
    return CheerSingleState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CheerSingleState = _$CheerSingleStateTearOff();

/// @nodoc
mixin _$CheerSingleState {
  int get count;
  String get name;

  Map<String, dynamic> toJson();
  $CheerSingleStateCopyWith<CheerSingleState> get copyWith;
}

/// @nodoc
abstract class $CheerSingleStateCopyWith<$Res> {
  factory $CheerSingleStateCopyWith(
          CheerSingleState value, $Res Function(CheerSingleState) then) =
      _$CheerSingleStateCopyWithImpl<$Res>;
  $Res call({int count, String name});
}

/// @nodoc
class _$CheerSingleStateCopyWithImpl<$Res>
    implements $CheerSingleStateCopyWith<$Res> {
  _$CheerSingleStateCopyWithImpl(this._value, this._then);

  final CheerSingleState _value;
  // ignore: unused_field
  final $Res Function(CheerSingleState) _then;

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
abstract class _$CheerSingleStateCopyWith<$Res>
    implements $CheerSingleStateCopyWith<$Res> {
  factory _$CheerSingleStateCopyWith(
          _CheerSingleState value, $Res Function(_CheerSingleState) then) =
      __$CheerSingleStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, String name});
}

/// @nodoc
class __$CheerSingleStateCopyWithImpl<$Res>
    extends _$CheerSingleStateCopyWithImpl<$Res>
    implements _$CheerSingleStateCopyWith<$Res> {
  __$CheerSingleStateCopyWithImpl(
      _CheerSingleState _value, $Res Function(_CheerSingleState) _then)
      : super(_value, (v) => _then(v as _CheerSingleState));

  @override
  _CheerSingleState get _value => super._value as _CheerSingleState;

  @override
  $Res call({
    Object count = freezed,
    Object name = freezed,
  }) {
    return _then(_CheerSingleState(
      count: count == freezed ? _value.count : count as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CheerSingleState implements _CheerSingleState {
  const _$_CheerSingleState({this.count = 0, this.name = ''})
      : assert(count != null),
        assert(name != null);

  factory _$_CheerSingleState.fromJson(Map<String, dynamic> json) =>
      _$_$_CheerSingleStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: '')
  @override
  final String name;

  @override
  String toString() {
    return 'CheerSingleState(count: $count, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheerSingleState &&
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
  _$CheerSingleStateCopyWith<_CheerSingleState> get copyWith =>
      __$CheerSingleStateCopyWithImpl<_CheerSingleState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheerSingleStateToJson(this);
  }
}

abstract class _CheerSingleState implements CheerSingleState {
  const factory _CheerSingleState({int count, String name}) =
      _$_CheerSingleState;

  factory _CheerSingleState.fromJson(Map<String, dynamic> json) =
      _$_CheerSingleState.fromJson;

  @override
  int get count;
  @override
  String get name;
  @override
  _$CheerSingleStateCopyWith<_CheerSingleState> get copyWith;
}
