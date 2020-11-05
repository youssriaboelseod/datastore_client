import 'package:datastore_client/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final materialBoxShadow = [
  BoxShadow(
    color: HSLColor.fromColor(Colors.black)
        .withHue(210)
        .withSaturation(0.08)
        .withLightness(0.54)
        .withAlpha(.2)
        .toColor(),
    offset: const Offset(0, 3),
    blurRadius: 6,
  ),
];

Text defaultText(
  String text, {
  FontWeight fontWeight = FontWeight.w300,
  double fontSize = 15,
  Color color = ColorName.fontColor,
}) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
