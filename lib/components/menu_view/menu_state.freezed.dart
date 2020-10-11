// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MenuState _$MenuStateFromJson(Map<String, dynamic> json) {
  return _MenuState.fromJson(json);
}

/// @nodoc
class _$MenuStateTearOff {
  const _$MenuStateTearOff();

// ignore: unused_element
  _MenuState call({int count = 0, String name = ''}) {
    return _MenuState(
      count: count,
      name: name,
    );
  }

// ignore: unused_element
  MenuState fromJson(Map<String, Object> json) {
    return MenuState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $MenuState = _$MenuStateTearOff();

/// @nodoc
mixin _$MenuState {
  int get count;
  String get name;

  Map<String, dynamic> toJson();
  $MenuStateCopyWith<MenuState> get copyWith;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res>;
  $Res call({int count, String name});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res> implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  final MenuState _value;
  // ignore: unused_field
  final $Res Function(MenuState) _then;

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
abstract class _$MenuStateCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$MenuStateCopyWith(
          _MenuState value, $Res Function(_MenuState) then) =
      __$MenuStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, String name});
}

/// @nodoc
class __$MenuStateCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements _$MenuStateCopyWith<$Res> {
  __$MenuStateCopyWithImpl(_MenuState _value, $Res Function(_MenuState) _then)
      : super(_value, (v) => _then(v as _MenuState));

  @override
  _MenuState get _value => super._value as _MenuState;

  @override
  $Res call({
    Object count = freezed,
    Object name = freezed,
  }) {
    return _then(_MenuState(
      count: count == freezed ? _value.count : count as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_MenuState implements _MenuState {
  const _$_MenuState({this.count = 0, this.name = ''})
      : assert(count != null),
        assert(name != null);

  factory _$_MenuState.fromJson(Map<String, dynamic> json) =>
      _$_$_MenuStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: '')
  @override
  final String name;

  @override
  String toString() {
    return 'MenuState(count: $count, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuState &&
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
  _$MenuStateCopyWith<_MenuState> get copyWith =>
      __$MenuStateCopyWithImpl<_MenuState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MenuStateToJson(this);
  }
}

abstract class _MenuState implements MenuState {
  const factory _MenuState({int count, String name}) = _$_MenuState;

  factory _MenuState.fromJson(Map<String, dynamic> json) =
      _$_MenuState.fromJson;

  @override
  int get count;
  @override
  String get name;
  @override
  _$MenuStateCopyWith<_MenuState> get copyWith;
}
