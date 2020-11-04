import 'package:bloc/bloc.dart';
import 'list_entities_state.dart';

class ListEntitiesCubit extends Cubit<ListEntitiesState> {
  ListEntitiesCubit() : super(ListEntitiesState.initial());
}
