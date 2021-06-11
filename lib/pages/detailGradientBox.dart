import 'package:file_manager/model/recent_file_model.dart';
import 'package:file_manager/widget/maketext.dart';
import 'package:flutter/material.dart';

class DetailGradientBox extends StatelessWidget {
  const DetailGradientBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: makeAppbar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.01,
          horizontal: size.width * 0.02,
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            makeRowText(
              context,
              makeTextString: 'Uploaded File',
              labelString: "Week",
            ),
            SizedBox(
              height: size.height * 0.012,
            ),
            makeBar(size),
            SizedBox(
              height: size.height * 0.02,
            ),
            makeText(
              "Recent file",
              fontWeight: FontWeight.bold,
              size: Theme.of(context).textTheme.headline6.fontSize,
            ),
            SizedBox(
              height: size.height * 0.012,
            ),
            makeListViewBuilder(size),
            SizedBox(
              height: size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }

  Widget makeListViewBuilder(Size size) {
    return Container(
      height: size.height * 0.386,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: getRecentFile.length,
          itemBuilder: (_, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: getRecentFile[index].icon,
                title: makeText(getRecentFile[index].text),
                subtitle: makeText(getRecentFile[index].time),
                trailing: makeText(
                  getRecentFile[index].space,
                ),
              ),
            );
          }),
    );
  }

  Widget makeBar(Size size) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          buildCustomBar(
            size,
            height: size.height * 0.12,
            text: "Mon",
          ),
          buildCustomBar(
            size,
            height: size.height * 0.16,
            text: "Tue",
          ),
          buildCustomBar(
            size,
            height: size.height * 0.08,
            text: "Wed",
          ),
          buildCustomBar(
            size,
            height: size.height * 0.24,
            text: "Thu",
          ),
          buildCustomBar(
            size,
            height: size.height * 0.2,
            text: "Fri",
          ),
          buildCustomBar(
            size,
            color: Colors.deepOrange.withOpacity(0.8),
            textColor: Colors.black,
            height: size.height * 0.29,
            text: "Sat",
          ),
          buildCustomBar(size, height: size.height * 0.12, text: "Sun"),
        ],
      ),
    );
  }

  Widget makeRowText(BuildContext context,
      {String makeTextString, String labelString}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        makeText(
          makeTextString,
          size: Theme.of(context).textTheme.headline6.fontSize,
          fontWeight: FontWeight.bold,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.grey.withOpacity(0.3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {},
          icon: Icon(
            Icons.arrow_drop_down_outlined,
            color: Colors.grey,
          ),
          label: makeText(labelString, color: Colors.grey),
        ),
      ],
    );
  }

  Widget makeAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      title: makeText("Activity", color: Colors.black),
      centerTitle: true,
      actions: [
        IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
    );
  }

  Widget buildCustomBar(
    Size size, {
    double height,
    String text,
    Color color,
    Color textColor,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: color ?? Colors.deepOrangeAccent.withOpacity(0.5),
            width: size.width * 0.036,
            height: height,
          ),
        ),
        makeText(
          text,
          color: textColor ?? Colors.grey,
        ),
      ],
    );
  }
}
