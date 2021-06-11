import 'package:file_manager/utilities.dart';
import 'package:flutter/material.dart';

Widget makeTextField({
  String hintText,
}) {
  return TextField(
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: textStyle(color: Colors.grey),
      prefixIcon: Icon(
        Icons.search,
        color: Colors.grey.withOpacity(0.6),
      ),
      enabledBorder: outlineInputBorder(),
      focusedBorder: outlineInputBorder(),
      border: outlineInputBorder(),
      filled: true,
      fillColor: Colors.grey.withOpacity(0.2),
    ),
  );
}
