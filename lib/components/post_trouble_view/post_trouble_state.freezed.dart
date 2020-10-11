// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_trouble_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PostTroubleState _$PostTroubleStateFromJson(Map<String, dynamic> json) {
  return _PostTroubleState.fromJson(json);
}

/// @nodoc
class _$PostTroubleStateTearOff {
  const _$PostTroubleStateTearOff();

// ignore: unused_element
  _PostTroubleState call({int count = 0, String name = ''}) {
    return _PostTroubleState(
      count: count,
      name: name,
    );
  }

// ignore: unused_element
  PostTroubleState fromJson(Map<String, Object> json) {
    return PostTroubleState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PostTroubleState = _$PostTroubleStateTearOff();

/// @nodoc
mixin _$PostTroubleState {
  int get count;
  String get name;

  Map<String, dynamic> toJson();
  $PostTroubleStateCopyWith<PostTroubleState> get copyWith;
}

/// @nodoc
abstract class $PostTroubleStateCopyWith<$Res> {
  factory $PostTroubleStateCopyWith(
          PostTroubleState value, $Res Function(PostTroubleState) then) =
      _$PostTroubleStateCopyWithImpl<$Res>;
  $Res call({int count, String name});
}

/// @nodoc
class _$PostTroubleStateCopyWithImpl<$Res>
    implements $PostTroubleStateCopyWith<$Res> {
  _$PostTroubleStateCopyWithImpl(this._value, this._then);

  final PostTroubleState _value;
  // ignore: unused_field
  final $Res Function(PostTroubleState) _then;

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
abstract class _$PostTroubleStateCopyWith<$Res>
    implements $PostTroubleStateCopyWith<$Res> {
  factory _$PostTroubleStateCopyWith(
          _PostTroubleState value, $Res Function(_PostTroubleState) then) =
      __$PostTroubleStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, String name});
}

/// @nodoc
class __$PostTroubleStateCopyWithImpl<$Res>
    extends _$PostTroubleStateCopyWithImpl<$Res>
    implements _$PostTroubleStateCopyWith<$Res> {
  __$PostTroubleStateCopyWithImpl(
      _PostTroubleState _value, $Res Function(_PostTroubleState) _then)
      : super(_value, (v) => _then(v as _PostTroubleState));

  @override
  _PostTroubleState get _value => super._value as _PostTroubleState;

  @override
  $Res call({
    Object count = freezed,
    Object name = freezed,
  }) {
    return _then(_PostTroubleState(
      count: count == freezed ? _value.count : count as int,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PostTroubleState implements _PostTroubleState {
  const _$_PostTroubleState({this.count = 0, this.name = ''})
      : assert(count != null),
        assert(name != null);

  factory _$_PostTroubleState.fromJson(Map<String, dynamic> json) =>
      _$_$_PostTroubleStateFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: '')
  @override
  final String name;

  @override
  String toString() {
    return 'PostTroubleState(count: $count, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostTroubleState &&
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
  _$PostTroubleStateCopyWith<_PostTroubleState> get copyWith =>
      __$PostTroubleStateCopyWithImpl<_PostTroubleState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostTroubleStateToJson(this);
  }
}

abstract class _PostTroubleState implements PostTroubleState {
  const factory _PostTroubleState({int count, String name}) =
      _$_PostTroubleState;

  factory _PostTroubleState.fromJson(Map<String, dynamic> json) =
      _$_PostTroubleState.fromJson;

  @override
  int get count;
  @override
  String get name;
  @override
  _$PostTroubleStateCopyWith<_PostTroubleState> get copyWith;
}
