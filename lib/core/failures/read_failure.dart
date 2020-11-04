import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_failure.freezed.dart';

@freezed
abstract class ReadFailure with _$ReadFailure {
  const factory ReadFailure.entityDoesNotExist() = _EntityDoesNotExist;
  const factory ReadFailure.socket() = _SocketFailure;
}
