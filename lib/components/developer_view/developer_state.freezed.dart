// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'developer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DeveloperStateTearOff {
  const _$DeveloperStateTearOff();

// ignore: unused_element
  _DeveloperState call({int count = 0, String name = ''}) {
    return _DeveloperState(
      count: count,
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DeveloperState = _$DeveloperStateTearOff();

/// @nodoc
mixin _$DeveloperState {
  int get count;
  String get name;

  $DeveloperStateCopyWith<DeveloperState> get copyWith;
}

/// @nodoc
abstract class $DeveloperStateCopyWith<$Res> {
  factory $DeveloperStateCopyWith(
          DeveloperState value, $Res Function(DeveloperState) then) =
      _$DeveloperStateCopyWithImpl<$Res>;
  $Res call({int count, String name});
}

/// @nodoc
class _$DeveloperStateCopyWithImpl<$Res>
    implements $DeveloperStateCopyWith<$Res> {
  _$DeveloperStateCopyWithImpl(this._value, this._then);

  final DeveloperState _value;
  // ignore: unused_field
  final $Res Function(DeveloperState) _then;

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
abstract class _$DeveloperStateCopyWith<$Res>
    implements $DeveloperStateCopyWith<$Res> {
  factory _$DeveloperStateCopyWith(
          _DeveloperState value, $Res Function(_DeveloperState) then) =
      __$DeveloperStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, String name});
}

/// @nodoc
class __$DeveloperStateCopyWithImpl<$Res>
    extends _$DeveloperStateCopyWithImpl<$Res>
    implements _$DeveloperStateCopyWith<$Res> {
  __$DeveloperStateCopyWithImpl(
      _DeveloperState _value, $Res Function(_DeveloperState) _then)
      : super(_value, (v) => _then(v as _DeveloperState));

  @override
  _DeveloperState get _value => super._value as _DeveloperState;

  @override
  $Res call({
    Object count = freezed,
    Object name = freezed,
  }) {
    return _then(_DeveloperState(
      count: count == freezed ? _value.count : count as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_DeveloperState implements _DeveloperState {
  const _$_DeveloperState({this.count = 0, this.name = ''})
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
    return 'DeveloperState(count: $count, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeveloperState &&
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
  _$DeveloperStateCopyWith<_DeveloperState> get copyWith =>
      __$DeveloperStateCopyWithImpl<_DeveloperState>(this, _$identity);
}

abstract class _DeveloperState implements DeveloperState {
  const factory _DeveloperState({int count, String name}) = _$_DeveloperState;

  @override
  int get count;
  @override
  String get name;
  @override
  _$DeveloperStateCopyWith<_DeveloperState> get copyWith;
}
