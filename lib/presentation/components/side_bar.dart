import 'package:datastore_client/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:datastore_client/core/extensions/context_x.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorName.darkGrey,
      width: context.maxWidth * 0.1,
      child: Column(
        children: const [
          Text(
            "Some Text",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
