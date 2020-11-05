import 'package:datastore_client/core/constants.dart';
import 'package:datastore_client/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:datastore_client/core/extensions/context_x.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: context.maxHeight * 0.05),
        Text(
          "Get Started",
          style: GoogleFonts.roboto(
            color: ColorName.fontColor,
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: context.maxHeight * 0.02),
        Container(
          color: ColorName.offGreen,
          width: 400,
          height: 200,
          child: Center(
            child: defaultText(
              "Some docs info and what not",
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
