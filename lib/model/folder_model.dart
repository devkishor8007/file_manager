import 'package:flutter/material.dart';

class Folder {
  String text;
  String space;
  Icon icon;
  Folder({
    this.text,
    this.space,
    this.icon,
  });
}

List<Folder> getFolder = [
  Folder(text: "Image", icon: Icon(Icons.image), space: "13 GB - 879 items"),
  Folder(
      text: "Audio", icon: Icon(Icons.audiotrack), space: "10 GB - 196 items"),
  Folder(text: "Video", icon: Icon(Icons.stream), space: "25 GB - 45 items"),
  Folder(text: "Document", icon: Icon(Icons.book), space: "5 GB - 203 items"),
];
