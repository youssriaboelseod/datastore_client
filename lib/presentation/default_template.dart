import 'package:datastore_client/application/list_entities/list_entities_cubit.dart';
import 'package:datastore_client/application/list_entities/list_entities_state.dart';
import 'package:datastore_client/data/read/read_datasource.dart';
import 'package:datastore_client/data/read/repository.dart';
import 'package:datastore_client/domain/read/usecases/list_entities_of_kind.dart';
import 'package:datastore_client/gen/colors.gen.dart';
import 'package:datastore_client/presentation/components/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class DefaultTemplate extends StatelessWidget {
  final Widget child;

  const DefaultTemplate({@required this.child});

  @override
  Widget build(BuildContext context) {
    final client = http.Client();
    final datasource = ReadDataSource(client);
    final repository = ReadRepository(datasource);
    final usecase = ListEntitiesOfKind(repository);

    return BlocProvider(
      create: (_) => ListEntitiesCubit(usecase),
      child: BlocBuilder<ListEntitiesCubit, ListEntitiesState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: ColorName.bgOffwhite,
            body: Row(
              children: [
                SideBar(),
                Expanded(
                  child: child,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// Expanded(
//                   child: Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         FlatButton(
//                           onPressed: () {
//                             final cubit = context.bloc<ListEntitiesCubit>();
//                             cubit.listEntitiesOfKind("any");
//                           },
//                           color: Colors.pink,
//                           child: const Text("Get shit from Db"),
//                         ),
//                         const SizedBox(width: 100),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ...state.entities.getList().map((p) {
//                               return Text(
//                                 "${p["entity"]["properties"]["name"]["stringValue"]}",
//                               );
//                               // "$p",
//                             }),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
