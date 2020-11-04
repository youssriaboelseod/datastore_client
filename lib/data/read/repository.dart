import 'dart:io';

import 'package:datastore_client/core/i_list.dart';
import 'package:datastore_client/core/failures/read_failure.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:datastore_client/domain/read/i_repository.dart';

abstract class IReadDataSource {
  Future<IList<Map<String, dynamic>>> listEntitiesOfKind(
    String kind,
  );
}

class ReadRepository implements IReadRepository {
  final IReadDataSource dataSource;

  ReadRepository(this.dataSource);

  @override
  Future<Either<ReadFailure, IList<Map<String, dynamic>>>> listEntitiesOfKind(
    String kind,
  ) async {
    try {
      final eitherFailureOrEntityList =
          await dataSource.listEntitiesOfKind(kind);
      return Right(eitherFailureOrEntityList);
    } on SocketException {
      return const Left(ReadFailure.socket());
    }
  }
}
