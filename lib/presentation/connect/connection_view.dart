import 'package:datastore_client/presentation/connect/components/connection_string.dart';
import 'package:datastore_client/presentation/connect/components/get_started.dart';
import 'package:flutter/material.dart';

class ConnectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _renderLeftCol(context),
        ),
        Expanded(
          child: _renderRightCol(context),
        ),
      ],
    );
  }

  Widget _renderLeftCol(BuildContext context) {
    return Column(
      children: [ConnectionString()],
    );
  }

  Widget _renderRightCol(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GetStarted(),
      ],
    );
  }
}
