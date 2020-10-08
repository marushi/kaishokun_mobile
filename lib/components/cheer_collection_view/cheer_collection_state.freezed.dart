// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cheer_collection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CheerCollectionState _$CheerCollectionStateFromJson(Map<String, dynamic> json) {
  return _CheerCollectionState.fromJson(json);
}

/// @nodoc
class _$CheerCollectionStateTearOff {
  const _$CheerCollectionStateTearOff();

// ignore: unused_element
  _CheerCollectionState call({int count = 0, String name = ''}) {
    return _CheerCollectionState(
      count: count,
      name: name,
    );
  }

// ignore: unused_element
  CheerCollectionState fromJson(Map<String, Object> json) {
    return CheerCollectionState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CheerCollectionState = _$CheerCollectionStateTearOff();

/// @nodoc
mixin _$CheerCollectionState {
  int get count;
  String get name;

  Map<String, dynamic> toJson();
  $CheerCollectionStateCopyWith<CheerCollectionState> get copyWith;
}

/// @nodoc
abstract class $CheerCollectionStateCopyWith<$Res> {
  factory $CheerCollectionStateCopyWith(CheerCollectionState value,
          $Res Function(CheerCollectionState) then) =
      _$CheerCollectionStateCopyWithImpl<$Res>;
  $Res call({int count, String name});
}

/// @nodoc
class _$CheerCollectionStateCopyWithImpl<$Res>
    implements $CheerCollectionStateCopyWith<$Res> {
  _$CheerCollectionStateCopyWithImpl(this._value, this._then);

  final CheerCollectionState _value;
  // ignore: unused_field
  final $Res Function(CheerCollectionState) _then;

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
abstract class _$CheerCollectionStateCopyWith<$Res>
    implements $CheerCollectionStateCopyWith<$Res> {
  factory _$CheerCollectionStateCopyWith(_CheerCollectionState value,
          $Res Function(_CheerCollectionState) then) =
      __$CheerCollectionStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, String name});
}

/// @nodoc
class __$CheerCollectionStateCopyWithImpl<$Res>
    extends _$CheerCollectionStateCopyWithImpl<$Res>
    implements _$CheerCollectionStateCopyWith<$Res> {
  __$CheerCollectionStateCopyWithImpl(
      _CheerCollectionState _value, $Res Function(_CheerCollectionState) _then)
      : super(_value, (v) => _then(v as _CheerCollectionState));

  @override
  _CheerCollectionState get _value => super._value as _CheerCollectionState;

  @override
  $Res call({
    Object count = freezed,
    Object name = freezed,
  }) {
    return _then(_CheerCollectionState(
      count: count == freezed ? _value.count : count as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CheerCollectionState implements _CheerCollectionState {
  const _$_CheerCollectionState({this.count = 0, this.name = ''})
      : assert(count != null),
        assert(name != null);

  factory _$_CheerCollectionState.fromJson(Map<String, dynamic> json) =>
      _$_$_CheerCollectionStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: '')
  @override
  final String name;

  @override
  String toString() {
    return 'CheerCollectionState(count: $count, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheerCollectionState &&
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
  _$CheerCollectionStateCopyWith<_CheerCollectionState> get copyWith =>
      __$CheerCollectionStateCopyWithImpl<_CheerCollectionState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CheerCollectionStateToJson(this);
  }
}

abstract class _CheerCollectionState implements CheerCollectionState {
  const factory _CheerCollectionState({int count, String name}) =
      _$_CheerCollectionState;

  factory _CheerCollectionState.fromJson(Map<String, dynamic> json) =
      _$_CheerCollectionState.fromJson;

  @override
  int get count;
  @override
  String get name;
  @override
  _$CheerCollectionStateCopyWith<_CheerCollectionState> get copyWith;
}
