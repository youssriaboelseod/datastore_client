import 'package:datastore_client/core/failures/read_failure.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:datastore_client/core/i_list.dart';
import 'package:datastore_client/domain/read/i_repository.dart';
import 'package:datastore_client/domain/read/usecases/list_entities_of_kind.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Should return IList when call succeeds", () async {
    final repository = SuccessReadRepository();
    final useCase = ListEntitiesOfKind(repository);

    final actual = await useCase("any");
    final expected = listFixture;

    expect(expected.isRight(), true);
    expect(actual, expected);
  });

  test("Should return ReadFailure when call fails", () async {
    final repository = FailureReadRepository();
    final useCase = ListEntitiesOfKind(repository);

    final actual = await useCase("any");
    const expected = failureFixture;

    expect(expected.isLeft(), true);
    expect(actual, expected);
  });
}

// Mocks & Fixtures
class SuccessReadRepository implements IReadRepository {
  @override
  Future<Either<ReadFailure, IList<Map<String, dynamic>>>> listEntitiesOfKind(
    String kind,
  ) async {
    return listFixture;
  }
}

class FailureReadRepository implements IReadRepository {
  @override
  Future<Either<ReadFailure, IList<Map<String, dynamic>>>> listEntitiesOfKind(
    String kind,
  ) async {
    return const Left(ReadFailure.entityDoesNotExist());
  }
}

final listFixture = Right<ReadFailure, IList<Map<String, dynamic>>>(
  IList(const [
    <String, dynamic>{"Name": "ferdz", "Position": 69}
  ]),
);

const failureFixture = Left<ReadFailure, IList<Map<String, dynamic>>>(
  ReadFailure.entityDoesNotExist(),
);
