import 'package:flutter/material.dart';

Widget makeOutlinedButton(
  size, {
  Widget child,
  Size minimumSize,
}) {
  return OutlinedButton(
    child: child,
    onPressed: () {},
    style: OutlinedButton.styleFrom(
        minimumSize: minimumSize ?? Size(size.width * 0.1, size.height * 0.06),
        primary: Colors.black,
        backgroundColor: Colors.white.withOpacity(0.4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )),
  );
}
