import 'package:flutter/material.dart';

Widget makeText(
  String textString, {
  Color color,
  double size,
  FontWeight fontWeight,
}) {
  return Text(
    textString,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
    ),
  );
}
