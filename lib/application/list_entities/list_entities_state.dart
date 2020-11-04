import 'package:datastore_client/core/i_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_entities_state.freezed.dart';

@freezed
abstract class ListEntitiesState with _$ListEntitiesState {
  const factory ListEntitiesState({
    @required IList<Map<String, dynamic>> entities,
  }) = _ListEntitiesState;

  factory ListEntitiesState.initial() => ListEntitiesState(
        entities: IList(const []),
      );
}
