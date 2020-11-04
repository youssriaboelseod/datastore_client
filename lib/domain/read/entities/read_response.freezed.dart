// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'read_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ReadResponse _$ReadResponseFromJson(Map<String, dynamic> json) {
  return _ReadResponse.fromJson(json);
}

/// @nodoc
class _$ReadResponseTearOff {
  const _$ReadResponseTearOff();

// ignore: unused_element
  _ReadResponse call({@required List<Map<String, dynamic>> entityResults}) {
    return _ReadResponse(
      entityResults: entityResults,
    );
  }

// ignore: unused_element
  ReadResponse fromJson(Map<String, Object> json) {
    return ReadResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ReadResponse = _$ReadResponseTearOff();

/// @nodoc
mixin _$ReadResponse {
  List<Map<String, dynamic>> get entityResults;

  Map<String, dynamic> toJson();
  $ReadResponseCopyWith<ReadResponse> get copyWith;
}

/// @nodoc
abstract class $ReadResponseCopyWith<$Res> {
  factory $ReadResponseCopyWith(
          ReadResponse value, $Res Function(ReadResponse) then) =
      _$ReadResponseCopyWithImpl<$Res>;
  $Res call({List<Map<String, dynamic>> entityResults});
}

/// @nodoc
class _$ReadResponseCopyWithImpl<$Res> implements $ReadResponseCopyWith<$Res> {
  _$ReadResponseCopyWithImpl(this._value, this._then);

  final ReadResponse _value;
  // ignore: unused_field
  final $Res Function(ReadResponse) _then;

  @override
  $Res call({
    Object entityResults = freezed,
  }) {
    return _then(_value.copyWith(
      entityResults: entityResults == freezed
          ? _value.entityResults
          : entityResults as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$ReadResponseCopyWith<$Res>
    implements $ReadResponseCopyWith<$Res> {
  factory _$ReadResponseCopyWith(
          _ReadResponse value, $Res Function(_ReadResponse) then) =
      __$ReadResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Map<String, dynamic>> entityResults});
}

/// @nodoc
class __$ReadResponseCopyWithImpl<$Res> extends _$ReadResponseCopyWithImpl<$Res>
    implements _$ReadResponseCopyWith<$Res> {
  __$ReadResponseCopyWithImpl(
      _ReadResponse _value, $Res Function(_ReadResponse) _then)
      : super(_value, (v) => _then(v as _ReadResponse));

  @override
  _ReadResponse get _value => super._value as _ReadResponse;

  @override
  $Res call({
    Object entityResults = freezed,
  }) {
    return _then(_ReadResponse(
      entityResults: entityResults == freezed
          ? _value.entityResults
          : entityResults as List<Map<String, dynamic>>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ReadResponse implements _ReadResponse {
  const _$_ReadResponse({@required this.entityResults})
      : assert(entityResults != null);

  factory _$_ReadResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ReadResponseFromJson(json);

  @override
  final List<Map<String, dynamic>> entityResults;

  @override
  String toString() {
    return 'ReadResponse(entityResults: $entityResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReadResponse &&
            (identical(other.entityResults, entityResults) ||
                const DeepCollectionEquality()
                    .equals(other.entityResults, entityResults)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entityResults);

  @override
  _$ReadResponseCopyWith<_ReadResponse> get copyWith =>
      __$ReadResponseCopyWithImpl<_ReadResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReadResponseToJson(this);
  }
}

abstract class _ReadResponse implements ReadResponse {
  const factory _ReadResponse(
      {@required List<Map<String, dynamic>> entityResults}) = _$_ReadResponse;

  factory _ReadResponse.fromJson(Map<String, dynamic> json) =
      _$_ReadResponse.fromJson;

  @override
  List<Map<String, dynamic>> get entityResults;
  @override
  _$ReadResponseCopyWith<_ReadResponse> get copyWith;
}
