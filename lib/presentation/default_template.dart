import 'package:datastore_client/presentation/components/side_bar.dart';
import 'package:flutter/material.dart';

class DefaultTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
        ],
      ),
    );
  }
}
