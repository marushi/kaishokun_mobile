// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trouble_collection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TroubleCollectionStateTearOff {
  const _$TroubleCollectionStateTearOff();

// ignore: unused_element
  _TroubleCollectionState call({List<Trouble> troubles = const []}) {
    return _TroubleCollectionState(
      troubles: troubles,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TroubleCollectionState = _$TroubleCollectionStateTearOff();

/// @nodoc
mixin _$TroubleCollectionState {
  List<Trouble> get troubles;

  $TroubleCollectionStateCopyWith<TroubleCollectionState> get copyWith;
}

/// @nodoc
abstract class $TroubleCollectionStateCopyWith<$Res> {
  factory $TroubleCollectionStateCopyWith(TroubleCollectionState value,
          $Res Function(TroubleCollectionState) then) =
      _$TroubleCollectionStateCopyWithImpl<$Res>;
  $Res call({List<Trouble> troubles});
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
    Object troubles = freezed,
  }) {
    return _then(_value.copyWith(
      troubles:
          troubles == freezed ? _value.troubles : troubles as List<Trouble>,
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
  $Res call({List<Trouble> troubles});
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
    Object troubles = freezed,
  }) {
    return _then(_TroubleCollectionState(
      troubles:
          troubles == freezed ? _value.troubles : troubles as List<Trouble>,
    ));
  }
}

/// @nodoc
class _$_TroubleCollectionState implements _TroubleCollectionState {
  const _$_TroubleCollectionState({this.troubles = const []})
      : assert(troubles != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<Trouble> troubles;

  @override
  String toString() {
    return 'TroubleCollectionState(troubles: $troubles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TroubleCollectionState &&
            (identical(other.troubles, troubles) ||
                const DeepCollectionEquality()
                    .equals(other.troubles, troubles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(troubles);

  @override
  _$TroubleCollectionStateCopyWith<_TroubleCollectionState> get copyWith =>
      __$TroubleCollectionStateCopyWithImpl<_TroubleCollectionState>(
          this, _$identity);
}

abstract class _TroubleCollectionState implements TroubleCollectionState {
  const factory _TroubleCollectionState({List<Trouble> troubles}) =
      _$_TroubleCollectionState;

  @override
  List<Trouble> get troubles;
  @override
  _$TroubleCollectionStateCopyWith<_TroubleCollectionState> get copyWith;
}
