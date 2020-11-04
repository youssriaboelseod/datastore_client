import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_response.freezed.dart';
part 'read_response.g.dart';

@freezed
abstract class ReadResponse with _$ReadResponse {
  const factory ReadResponse({
    @required List<Map<String, dynamic>> entityResults,
  }) = _ReadResponse;

  factory ReadResponse.fromJson(Map<String, dynamic> json) =>
      _$ReadResponseFromJson(json);
}
