import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:datastore_client/application/list_entities/list_entities_cubit.dart';
import 'package:datastore_client/application/list_entities/list_entities_state.dart';
import 'package:datastore_client/core/failures/read_failure.dart';
import 'package:datastore_client/core/i_list.dart';
import 'package:datastore_client/domain/read/usecases/list_entities_of_kind.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  test('initial state is []', () {
    final listEntitiesOfKindUseCase = SuccessListEntitiesOfKind();
    final cubit = ListEntitiesCubit(listEntitiesOfKindUseCase);
    final initialState = ListEntitiesState(
      entities: IList<Map<String, dynamic>>(const []),
    );
    expect(cubit.state, initialState);
  });

  blocTest<ListEntitiesCubit, ListEntitiesState>(
    "ListEntitiesCubit emits IList of Entities when Usecase is successful",
    build: () {
      final listEntitiesOfKindUseCase = SuccessListEntitiesOfKind();
      final cubit = ListEntitiesCubit(listEntitiesOfKindUseCase);
      return cubit;
    },
    act: (cubit) async => cubit.listEntitiesOfKind("any"),
    expect: <ListEntitiesState>[
      ListEntitiesState(entities: listFixture),
    ],
  );
}

// Mocks and Fixtures
class SuccessListEntitiesOfKind extends Fake implements ListEntitiesOfKind {
  @override
  Future<Either<ReadFailure, IList<Map<String, dynamic>>>> call(
    String kind,
  ) async {
    return Right(listFixture);
  }
}

final listFixture = IList(const [
  <String, dynamic>{"Name": "ferdz", "Position": 69}
]);
