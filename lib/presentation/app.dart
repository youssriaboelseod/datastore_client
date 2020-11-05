import 'package:datastore_client/presentation/connect/connection_view.dart';
import 'package:datastore_client/presentation/default_template.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTemplate(
      child: ConnectionView(),
    );
  }
}
