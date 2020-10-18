// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cheer_collection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CheerCollectionStateTearOff {
  const _$CheerCollectionStateTearOff();

// ignore: unused_element
  _CheerCollectionState call({List<Cheer> cheers = const []}) {
    return _CheerCollectionState(
      cheers: cheers,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CheerCollectionState = _$CheerCollectionStateTearOff();

/// @nodoc
mixin _$CheerCollectionState {
  List<Cheer> get cheers;

  $CheerCollectionStateCopyWith<CheerCollectionState> get copyWith;
}

/// @nodoc
abstract class $CheerCollectionStateCopyWith<$Res> {
  factory $CheerCollectionStateCopyWith(CheerCollectionState value,
          $Res Function(CheerCollectionState) then) =
      _$CheerCollectionStateCopyWithImpl<$Res>;
  $Res call({List<Cheer> cheers});
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
    Object cheers = freezed,
  }) {
    return _then(_value.copyWith(
      cheers: cheers == freezed ? _value.cheers : cheers as List<Cheer>,
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
  $Res call({List<Cheer> cheers});
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
    Object cheers = freezed,
  }) {
    return _then(_CheerCollectionState(
      cheers: cheers == freezed ? _value.cheers : cheers as List<Cheer>,
    ));
  }
}

/// @nodoc
class _$_CheerCollectionState implements _CheerCollectionState {
  const _$_CheerCollectionState({this.cheers = const []})
      : assert(cheers != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<Cheer> cheers;

  @override
  String toString() {
    return 'CheerCollectionState(cheers: $cheers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheerCollectionState &&
            (identical(other.cheers, cheers) ||
                const DeepCollectionEquality().equals(other.cheers, cheers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cheers);

  @override
  _$CheerCollectionStateCopyWith<_CheerCollectionState> get copyWith =>
      __$CheerCollectionStateCopyWithImpl<_CheerCollectionState>(
          this, _$identity);
}

abstract class _CheerCollectionState implements CheerCollectionState {
  const factory _CheerCollectionState({List<Cheer> cheers}) =
      _$_CheerCollectionState;

  @override
  List<Cheer> get cheers;
  @override
  _$CheerCollectionStateCopyWith<_CheerCollectionState> get copyWith;
}
