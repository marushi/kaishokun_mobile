// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tab_bar_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TabBarState _$TabBarStateFromJson(Map<String, dynamic> json) {
  return _TabBarState.fromJson(json);
}

/// @nodoc
class _$TabBarStateTearOff {
  const _$TabBarStateTearOff();

// ignore: unused_element
  _TabBarState call({int count = 0, String name = ''}) {
    return _TabBarState(
      count: count,
      name: name,
    );
  }

// ignore: unused_element
  TabBarState fromJson(Map<String, Object> json) {
    return TabBarState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TabBarState = _$TabBarStateTearOff();

/// @nodoc
mixin _$TabBarState {
  int get count;
  String get name;

  Map<String, dynamic> toJson();
  $TabBarStateCopyWith<TabBarState> get copyWith;
}

/// @nodoc
abstract class $TabBarStateCopyWith<$Res> {
  factory $TabBarStateCopyWith(
          TabBarState value, $Res Function(TabBarState) then) =
      _$TabBarStateCopyWithImpl<$Res>;
  $Res call({int count, String name});
}

/// @nodoc
class _$TabBarStateCopyWithImpl<$Res> implements $TabBarStateCopyWith<$Res> {
  _$TabBarStateCopyWithImpl(this._value, this._then);

  final TabBarState _value;
  // ignore: unused_field
  final $Res Function(TabBarState) _then;

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
abstract class _$TabBarStateCopyWith<$Res>
    implements $TabBarStateCopyWith<$Res> {
  factory _$TabBarStateCopyWith(
          _TabBarState value, $Res Function(_TabBarState) then) =
      __$TabBarStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, String name});
}

/// @nodoc
class __$TabBarStateCopyWithImpl<$Res> extends _$TabBarStateCopyWithImpl<$Res>
    implements _$TabBarStateCopyWith<$Res> {
  __$TabBarStateCopyWithImpl(
      _TabBarState _value, $Res Function(_TabBarState) _then)
      : super(_value, (v) => _then(v as _TabBarState));

  @override
  _TabBarState get _value => super._value as _TabBarState;

  @override
  $Res call({
    Object count = freezed,
    Object name = freezed,
  }) {
    return _then(_TabBarState(
      count: count == freezed ? _value.count : count as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TabBarState implements _TabBarState {
  const _$_TabBarState({this.count = 0, this.name = ''})
      : assert(count != null),
        assert(name != null);

  factory _$_TabBarState.fromJson(Map<String, dynamic> json) =>
      _$_$_TabBarStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: '')
  @override
  final String name;

  @override
  String toString() {
    return 'TabBarState(count: $count, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TabBarState &&
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
  _$TabBarStateCopyWith<_TabBarState> get copyWith =>
      __$TabBarStateCopyWithImpl<_TabBarState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TabBarStateToJson(this);
  }
}

abstract class _TabBarState implements TabBarState {
  const factory _TabBarState({int count, String name}) = _$_TabBarState;

  factory _TabBarState.fromJson(Map<String, dynamic> json) =
      _$_TabBarState.fromJson;

  @override
  int get count;
  @override
  String get name;
  @override
  _$TabBarStateCopyWith<_TabBarState> get copyWith;
}
