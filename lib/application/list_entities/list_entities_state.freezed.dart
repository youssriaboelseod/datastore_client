// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_entities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ListEntitiesStateTearOff {
  const _$ListEntitiesStateTearOff();

// ignore: unused_element
  _ListEntitiesState call({@required IList<Map<String, dynamic>> entities}) {
    return _ListEntitiesState(
      entities: entities,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ListEntitiesState = _$ListEntitiesStateTearOff();

/// @nodoc
mixin _$ListEntitiesState {
  IList<Map<String, dynamic>> get entities;

  $ListEntitiesStateCopyWith<ListEntitiesState> get copyWith;
}

/// @nodoc
abstract class $ListEntitiesStateCopyWith<$Res> {
  factory $ListEntitiesStateCopyWith(
          ListEntitiesState value, $Res Function(ListEntitiesState) then) =
      _$ListEntitiesStateCopyWithImpl<$Res>;
  $Res call({IList<Map<String, dynamic>> entities});
}

/// @nodoc
class _$ListEntitiesStateCopyWithImpl<$Res>
    implements $ListEntitiesStateCopyWith<$Res> {
  _$ListEntitiesStateCopyWithImpl(this._value, this._then);

  final ListEntitiesState _value;
  // ignore: unused_field
  final $Res Function(ListEntitiesState) _then;

  @override
  $Res call({
    Object entities = freezed,
  }) {
    return _then(_value.copyWith(
      entities: entities == freezed
          ? _value.entities
          : entities as IList<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$ListEntitiesStateCopyWith<$Res>
    implements $ListEntitiesStateCopyWith<$Res> {
  factory _$ListEntitiesStateCopyWith(
          _ListEntitiesState value, $Res Function(_ListEntitiesState) then) =
      __$ListEntitiesStateCopyWithImpl<$Res>;
  @override
  $Res call({IList<Map<String, dynamic>> entities});
}

/// @nodoc
class __$ListEntitiesStateCopyWithImpl<$Res>
    extends _$ListEntitiesStateCopyWithImpl<$Res>
    implements _$ListEntitiesStateCopyWith<$Res> {
  __$ListEntitiesStateCopyWithImpl(
      _ListEntitiesState _value, $Res Function(_ListEntitiesState) _then)
      : super(_value, (v) => _then(v as _ListEntitiesState));

  @override
  _ListEntitiesState get _value => super._value as _ListEntitiesState;

  @override
  $Res call({
    Object entities = freezed,
  }) {
    return _then(_ListEntitiesState(
      entities: entities == freezed
          ? _value.entities
          : entities as IList<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
class _$_ListEntitiesState implements _ListEntitiesState {
  const _$_ListEntitiesState({@required this.entities})
      : assert(entities != null);

  @override
  final IList<Map<String, dynamic>> entities;

  @override
  String toString() {
    return 'ListEntitiesState(entities: $entities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListEntitiesState &&
            (identical(other.entities, entities) ||
                const DeepCollectionEquality()
                    .equals(other.entities, entities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entities);

  @override
  _$ListEntitiesStateCopyWith<_ListEntitiesState> get copyWith =>
      __$ListEntitiesStateCopyWithImpl<_ListEntitiesState>(this, _$identity);
}

abstract class _ListEntitiesState implements ListEntitiesState {
  const factory _ListEntitiesState(
      {@required IList<Map<String, dynamic>> entities}) = _$_ListEntitiesState;

  @override
  IList<Map<String, dynamic>> get entities;
  @override
  _$ListEntitiesStateCopyWith<_ListEntitiesState> get copyWith;
}
