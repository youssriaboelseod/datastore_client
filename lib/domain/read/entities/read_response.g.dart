// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReadResponse _$_$_ReadResponseFromJson(Map<String, dynamic> json) {
  return _$_ReadResponse(
    entityResults: (json['entityResults'] as List)
        ?.map((e) => e as Map<String, dynamic>)
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ReadResponseToJson(_$_ReadResponse instance) =>
    <String, dynamic>{
      'entityResults': instance.entityResults,
    };
