// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'post_trouble_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PostTroubleStateTearOff {
  const _$PostTroubleStateTearOff();

// ignore: unused_element
  _PostTroubleState call({int troubleLevel = 0}) {
    return _PostTroubleState(
      troubleLevel: troubleLevel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PostTroubleState = _$PostTroubleStateTearOff();

/// @nodoc
mixin _$PostTroubleState {
  int get troubleLevel;

  $PostTroubleStateCopyWith<PostTroubleState> get copyWith;
}

/// @nodoc
abstract class $PostTroubleStateCopyWith<$Res> {
  factory $PostTroubleStateCopyWith(
          PostTroubleState value, $Res Function(PostTroubleState) then) =
      _$PostTroubleStateCopyWithImpl<$Res>;
  $Res call({int troubleLevel});
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
    Object troubleLevel = freezed,
  }) {
    return _then(_value.copyWith(
      troubleLevel:
          troubleLevel == freezed ? _value.troubleLevel : troubleLevel as int,
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
  $Res call({int troubleLevel});
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
    Object troubleLevel = freezed,
  }) {
    return _then(_PostTroubleState(
      troubleLevel:
          troubleLevel == freezed ? _value.troubleLevel : troubleLevel as int,
    ));
  }
}

/// @nodoc
class _$_PostTroubleState implements _PostTroubleState {
  const _$_PostTroubleState({this.troubleLevel = 0})
      : assert(troubleLevel != null);

  @JsonKey(defaultValue: 0)
  @override
  final int troubleLevel;

  @override
  String toString() {
    return 'PostTroubleState(troubleLevel: $troubleLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostTroubleState &&
            (identical(other.troubleLevel, troubleLevel) ||
                const DeepCollectionEquality()
                    .equals(other.troubleLevel, troubleLevel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(troubleLevel);

  @override
  _$PostTroubleStateCopyWith<_PostTroubleState> get copyWith =>
      __$PostTroubleStateCopyWithImpl<_PostTroubleState>(this, _$identity);
}

abstract class _PostTroubleState implements PostTroubleState {
  const factory _PostTroubleState({int troubleLevel}) = _$_PostTroubleState;

  @override
  int get troubleLevel;
  @override
  _$PostTroubleStateCopyWith<_PostTroubleState> get copyWith;
}
