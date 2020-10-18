// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'setting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingStateTearOff {
  const _$SettingStateTearOff();

// ignore: unused_element
  _SettingState call(
      {String penName = '', String twitterId = '', String instagramId = ''}) {
    return _SettingState(
      penName: penName,
      twitterId: twitterId,
      instagramId: instagramId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SettingState = _$SettingStateTearOff();

/// @nodoc
mixin _$SettingState {
  String get penName;
  String get twitterId;
  String get instagramId;

  $SettingStateCopyWith<SettingState> get copyWith;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res>;
  $Res call({String penName, String twitterId, String instagramId});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  final SettingState _value;
  // ignore: unused_field
  final $Res Function(SettingState) _then;

  @override
  $Res call({
    Object penName = freezed,
    Object twitterId = freezed,
    Object instagramId = freezed,
  }) {
    return _then(_value.copyWith(
      penName: penName == freezed ? _value.penName : penName as String,
      twitterId: twitterId == freezed ? _value.twitterId : twitterId as String,
      instagramId:
          instagramId == freezed ? _value.instagramId : instagramId as String,
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
  $Res call({String penName, String twitterId, String instagramId});
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
    Object penName = freezed,
    Object twitterId = freezed,
    Object instagramId = freezed,
  }) {
    return _then(_SettingState(
      penName: penName == freezed ? _value.penName : penName as String,
      twitterId: twitterId == freezed ? _value.twitterId : twitterId as String,
      instagramId:
          instagramId == freezed ? _value.instagramId : instagramId as String,
    ));
  }
}

/// @nodoc
class _$_SettingState implements _SettingState {
  const _$_SettingState(
      {this.penName = '', this.twitterId = '', this.instagramId = ''})
      : assert(penName != null),
        assert(twitterId != null),
        assert(instagramId != null);

  @JsonKey(defaultValue: '')
  @override
  final String penName;
  @JsonKey(defaultValue: '')
  @override
  final String twitterId;
  @JsonKey(defaultValue: '')
  @override
  final String instagramId;

  @override
  String toString() {
    return 'SettingState(penName: $penName, twitterId: $twitterId, instagramId: $instagramId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingState &&
            (identical(other.penName, penName) ||
                const DeepCollectionEquality()
                    .equals(other.penName, penName)) &&
            (identical(other.twitterId, twitterId) ||
                const DeepCollectionEquality()
                    .equals(other.twitterId, twitterId)) &&
            (identical(other.instagramId, instagramId) ||
                const DeepCollectionEquality()
                    .equals(other.instagramId, instagramId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(penName) ^
      const DeepCollectionEquality().hash(twitterId) ^
      const DeepCollectionEquality().hash(instagramId);

  @override
  _$SettingStateCopyWith<_SettingState> get copyWith =>
      __$SettingStateCopyWithImpl<_SettingState>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState(
      {String penName, String twitterId, String instagramId}) = _$_SettingState;

  @override
  String get penName;
  @override
  String get twitterId;
  @override
  String get instagramId;
  @override
  _$SettingStateCopyWith<_SettingState> get copyWith;
}
