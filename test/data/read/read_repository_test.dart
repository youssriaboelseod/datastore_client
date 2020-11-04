import 'dart:io';

import 'package:dartz/dartz.dart' hide IList;
import 'package:datastore_client/core/i_list.dart';
import 'package:datastore_client/core/failures/read_failure.dart';
import 'package:datastore_client/data/read/repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Should return a list of entities of requested kind", () async {
    final dataSource = SuccessDataSource();
    final repository = ReadRepository(dataSource);

    final actual = await repository.listEntitiesOfKind("any");
    final matcher =
        Right<ReadFailure, IList<Map<String, dynamic>>>(_listFixture);

    expect(actual.isRight(), true);
    expect(actual, matcher);
  });

  test("Should return a Failure when we get an Exception", () async {
    final dataSource = FailureDataSource();
    final repository = ReadRepository(dataSource);

    final actual = await repository.listEntitiesOfKind("any");
    const matcher =
        Left<ReadFailure, IList<Map<String, dynamic>>>(ReadFailure.socket());

    expect(actual.isLeft(), true);
    expect(actual, matcher);
  });
}

// Mocks & Fixtures
class SuccessDataSource implements IReadDataSource {
  @override
  Future<IList<Map<String, dynamic>>> listEntitiesOfKind(
    String kind,
  ) async {
    final result = _listFixture;
    return result;
  }
}

class FailureDataSource implements IReadDataSource {
  @override
  Future<IList<Map<String, dynamic>>> listEntitiesOfKind(
    String kind,
  ) async {
    throw const SocketException("Socket Issue");
  }
}

final _listFixture = IList(const [
  <String, dynamic>{"Name": "ferdz", "Position": 69}
]);
