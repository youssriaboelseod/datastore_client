import 'package:bloc/bloc.dart';
import 'package:datastore_client/core/i_list.dart';
import 'package:datastore_client/domain/read/usecases/list_entities_of_kind.dart';
import 'list_entities_state.dart';

class ListEntitiesCubit extends Cubit<ListEntitiesState> {
  final ListEntitiesOfKind _listEntitiesOfKindUseCase;

  ListEntitiesCubit(this._listEntitiesOfKindUseCase)
      : super(ListEntitiesState.initial());

  Future<void> listEntitiesOfKind(String kind) async {
    final eitherFailureOrEntityList = await _listEntitiesOfKindUseCase(kind);

    eitherFailureOrEntityList.fold(
      (f) {
        emit(ListEntitiesState(
            entities: IList(const [
          <String, dynamic>{
            "fuck": "yeah",
            "notWorking": true,
          }
        ])));
      },
      (entityList) {
        emit(ListEntitiesState(entities: entityList));
      },
    );
  }
}
