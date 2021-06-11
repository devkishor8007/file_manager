import 'package:file_manager/pages/homePages.dart';
import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({Key key}) : super(key: key);

  @override
  _BottomPageState createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int _currentIndex = 0;
  List<Widget> getWidget = [
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          bottom: size.height * 0.04,
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          onPressed: () {},
          child: Icon(
            Icons.add,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.table_chart_sharp),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.movie_filter),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: getWidget[_currentIndex],
    );
  }
}
