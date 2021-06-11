import 'package:flutter/material.dart';

TextStyle textStyle({
  Color color,
  double size,
  FontWeight fontWeight,
}) {
  return TextStyle(
    color: color,
    fontSize: size,
    fontWeight: fontWeight,
  );
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide.none,
  );
}
