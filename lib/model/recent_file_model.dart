import 'package:flutter/material.dart';

class RecentFile {
  String text;
  String space;
  String time;
  Icon icon;
  RecentFile({
    this.text,
    this.time,
    this.space,
    this.icon,
  });
}

List<RecentFile> getRecentFile = [
  RecentFile(
    text: "Image05.jpg",
    icon: Icon(Icons.image),
    space: "13 GB",
    time: "2 Hours Ago",
  ),
  RecentFile(
    text: "Record12.mp3",
    icon: Icon(Icons.audiotrack),
    space: "10 GB",
    time: "10 May 2021",
  ),
  RecentFile(
    text: "MobileDesign.fig",
    icon: Icon(Icons.art_track_rounded),
    space: "25 GB",
    time: "24 Apr 2021",
  ),
  RecentFile(
    text: "Beach.png",
    icon: Icon(Icons.book),
    space: "5 GB",
    time: "22 Apr 2021",
  ),
];
