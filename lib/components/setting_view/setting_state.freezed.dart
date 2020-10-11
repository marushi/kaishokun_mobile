// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SettingState _$SettingStateFromJson(Map<String, dynamic> json) {
  return _SettingState.fromJson(json);
}

/// @nodoc
class _$SettingStateTearOff {
  const _$SettingStateTearOff();

// ignore: unused_element
  _SettingState call({int count = 0, String name = ''}) {
    return _SettingState(
      count: count,
      name: name,
    );
  }

// ignore: unused_element
  SettingState fromJson(Map<String, Object> json) {
    return SettingState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SettingState = _$SettingStateTearOff();

/// @nodoc
mixin _$SettingState {
  int get count;
  String get name;

  Map<String, dynamic> toJson();
  $SettingStateCopyWith<SettingState> get copyWith;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res>;
  $Res call({int count, String name});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  final SettingState _value;
  // ignore: unused_field
  final $Res Function(SettingState) _then;

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
abstract class _$SettingStateCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$SettingStateCopyWith(
          _SettingState value, $Res Function(_SettingState) then) =
      __$SettingStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, String name});
}

/// @nodoc
class __$SettingStateCopyWithImpl<$Res> extends _$SettingStateCopyWithImpl<$Res>
    implements _$SettingStateCopyWith<$Res> {
  __$SettingStateCopyWithImpl(
      _SettingState _value, $Res Function(_SettingState) _then)
      : super(_value, (v) => _then(v as _SettingState));

  @override
  _SettingState get _value => super._value as _SettingState;

  @override
  $Res call({
    Object count = freezed,
    Object name = freezed,
  }) {
    return _then(_SettingState(
      count: count == freezed ? _value.count : count as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SettingState implements _SettingState {
  const _$_SettingState({this.count = 0, this.name = ''})
      : assert(count != null),
        assert(name != null);

  factory _$_SettingState.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: '')
  @override
  final String name;

  @override
  String toString() {
    return 'SettingState(count: $count, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingState &&
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
  _$SettingStateCopyWith<_SettingState> get copyWith =>
      __$SettingStateCopyWithImpl<_SettingState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingStateToJson(this);
  }
}

abstract class _SettingState implements SettingState {
  const factory _SettingState({int count, String name}) = _$_SettingState;

  factory _SettingState.fromJson(Map<String, dynamic> json) =
      _$_SettingState.fromJson;

  @override
  int get count;
  @override
  String get name;
  @override
  _$SettingStateCopyWith<_SettingState> get copyWith;
}
