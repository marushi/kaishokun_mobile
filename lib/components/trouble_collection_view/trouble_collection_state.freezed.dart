// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trouble_collection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TroubleCollectionState _$TroubleCollectionStateFromJson(
    Map<String, dynamic> json) {
  return _TroubleCollectionState.fromJson(json);
}

/// @nodoc
class _$TroubleCollectionStateTearOff {
  const _$TroubleCollectionStateTearOff();

// ignore: unused_element
  _TroubleCollectionState call({int count = 0, String name = ''}) {
    return _TroubleCollectionState(
      count: count,
      name: name,
    );
  }

// ignore: unused_element
  TroubleCollectionState fromJson(Map<String, Object> json) {
    return TroubleCollectionState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TroubleCollectionState = _$TroubleCollectionStateTearOff();

/// @nodoc
mixin _$TroubleCollectionState {
  int get count;
  String get name;

  Map<String, dynamic> toJson();
  $TroubleCollectionStateCopyWith<TroubleCollectionState> get copyWith;
}

/// @nodoc
abstract class $TroubleCollectionStateCopyWith<$Res> {
  factory $TroubleCollectionStateCopyWith(TroubleCollectionState value,
          $Res Function(TroubleCollectionState) then) =
      _$TroubleCollectionStateCopyWithImpl<$Res>;
  $Res call({int count, String name});
}

/// @nodoc
class _$TroubleCollectionStateCopyWithImpl<$Res>
    implements $TroubleCollectionStateCopyWith<$Res> {
  _$TroubleCollectionStateCopyWithImpl(this._value, this._then);

  final TroubleCollectionState _value;
  // ignore: unused_field
  final $Res Function(TroubleCollectionState) _then;

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
abstract class _$TroubleCollectionStateCopyWith<$Res>
    implements $TroubleCollectionStateCopyWith<$Res> {
  factory _$TroubleCollectionStateCopyWith(_TroubleCollectionState value,
          $Res Function(_TroubleCollectionState) then) =
      __$TroubleCollectionStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, String name});
}

/// @nodoc
class __$TroubleCollectionStateCopyWithImpl<$Res>
    extends _$TroubleCollectionStateCopyWithImpl<$Res>
    implements _$TroubleCollectionStateCopyWith<$Res> {
  __$TroubleCollectionStateCopyWithImpl(_TroubleCollectionState _value,
      $Res Function(_TroubleCollectionState) _then)
      : super(_value, (v) => _then(v as _TroubleCollectionState));

  @override
  _TroubleCollectionState get _value => super._value as _TroubleCollectionState;

  @override
  $Res call({
    Object count = freezed,
    Object name = freezed,
  }) {
    return _then(_TroubleCollectionState(
      count: count == freezed ? _value.count : count as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TroubleCollectionState implements _TroubleCollectionState {
  const _$_TroubleCollectionState({this.count = 0, this.name = ''})
      : assert(count != null),
        assert(name != null);

  factory _$_TroubleCollectionState.fromJson(Map<String, dynamic> json) =>
      _$_$_TroubleCollectionStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: '')
  @override
  final String name;

  @override
  String toString() {
    return 'TroubleCollectionState(count: $count, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TroubleCollectionState &&
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
  _$TroubleCollectionStateCopyWith<_TroubleCollectionState> get copyWith =>
      __$TroubleCollectionStateCopyWithImpl<_TroubleCollectionState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TroubleCollectionStateToJson(this);
  }
}

abstract class _TroubleCollectionState implements TroubleCollectionState {
  const factory _TroubleCollectionState({int count, String name}) =
      _$_TroubleCollectionState;

  factory _TroubleCollectionState.fromJson(Map<String, dynamic> json) =
      _$_TroubleCollectionState.fromJson;

  @override
  int get count;
  @override
  String get name;
  @override
  _$TroubleCollectionStateCopyWith<_TroubleCollectionState> get copyWith;
}
