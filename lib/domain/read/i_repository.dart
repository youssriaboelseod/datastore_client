import 'package:dartz/dartz.dart' hide IList;
import 'package:datastore_client/core/failures/read_failure.dart';
import 'package:datastore_client/core/i_list.dart';

abstract class IReadRepository {
  Future<Either<ReadFailure, IList<Map<String, dynamic>>>> listEntitiesOfKind(
    String kind,
  );
}
