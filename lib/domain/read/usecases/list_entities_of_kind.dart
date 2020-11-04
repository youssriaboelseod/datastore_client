import 'package:dartz/dartz.dart' hide IList;
import 'package:datastore_client/core/failures/read_failure.dart';
import 'package:datastore_client/core/i_list.dart';
import 'package:datastore_client/domain/read/i_repository.dart';

class ListEntitiesOfKind {
  final IReadRepository repository;

  ListEntitiesOfKind(this.repository);

  Future<Either<ReadFailure, IList<Map<String, dynamic>>>> call(
    String kind,
  ) async {
    final eitherFailureOrEntityList = await repository.listEntitiesOfKind(kind);
    return eitherFailureOrEntityList;
  }
}
