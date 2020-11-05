import 'dart:ui';

import 'package:datastore_client/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:datastore_client/core/extensions/context_x.dart';
import 'package:datastore_client/core/constants.dart';
import 'package:flutter/rendering.dart';

class ConnectionString extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: context.maxHeight * 0.05),
        defaultText(
          "Connect to Datastore",
          fontSize: 20,
        ),
        SizedBox(height: context.maxHeight * 0.02),
        _renderContainer(context),
      ],
    );
  }

  Widget _renderContainer(BuildContext context) {
    final width = context.maxWidth * 0.4;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: materialBoxShadow,
      ),
      width: width,
      child: Padding(
        padding: EdgeInsets.all(context.maxWidth * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultText(
              "Connection Details",
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: context.maxHeight * 0.025),
            _renderInputArea(context),
            SizedBox(height: context.maxHeight * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [_renderConnectButton(context)],
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderInputArea(BuildContext context) {
    return Column(
      children: [
        _renderInputField((s) {
          print(s);
        }, "Hostname", "localhost"),
        _renderInputField((s) {
          print(s);
        }, "Port", "8080")
      ],
    );
  }

  Widget _renderConnectButton(BuildContext context) {
    return MaterialButton(
      onPressed: () => print("Connect"),
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 15,
      ),
      color: ColorName.happyGreen,
      elevation: 1,
      child: Center(
        child: defaultText(
          "Connect",
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _renderInputField(
    void Function(String s) onChange,
    String title,
    String hint,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                defaultText(
                  title,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                onChanged: onChange,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: const TextStyle(
                    fontSize: 12,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
