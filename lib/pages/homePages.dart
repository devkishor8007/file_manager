import 'package:file_manager/model/folder_model.dart';
import 'package:file_manager/pages/detailGradientBox.dart';
import 'package:file_manager/widget/maketext.dart';
import 'package:file_manager/widget/outlinedButton.dart';
import 'package:file_manager/widget/textField.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01,
              horizontal: size.width * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(
                  height: size.height * 0.012,
                ),
                makeText(
                  "Hi, Chris!",
                  color: Colors.grey,
                ),
                makeText(
                  "Welcome to file manager!",
                  fontWeight: FontWeight.bold,
                  size: Theme.of(context).textTheme.headline5.fontSize,
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                makeTextField(
                  hintText: "Search",
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailGradientBox(),
                      ),
                    );
                  },
                  child: makeGradientBox(size),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    makeText(
                      "My folder",
                      fontWeight: FontWeight.bold,
                      size: Theme.of(context).textTheme.headline6.fontSize,
                    ),
                    Row(
                      children: [
                        Icon(Icons.sort),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Icon(Icons.dashboard),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                makeGridView(size, context),
                SizedBox(
                  height: size.height * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeGridView(Size size, BuildContext context) {
    return Container(
      height: size.height * 0.25,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: getFolder.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 5 / 2.6,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        itemBuilder: (_, index) {
          return Stack(
            children: [
              Container(
                width: size.width,
                child: Card(
                  elevation: 2.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        getFolder[index].icon,
                        makeText(
                          getFolder[index].text,
                          fontWeight: FontWeight.bold,
                          size: Theme.of(context).textTheme.headline6.fontSize,
                        ),
                        makeText(
                          getFolder[index].space,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: size.width * 0.03,
                top: size.height * 0.01,
                child: Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget makeGradientBox(Size size) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red.shade600,
            Colors.orange.shade300,
            Colors.red.shade200,
            Colors.orange.shade500,
            Colors.red.shade600,
            Colors.orange.shade200,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      height: size.height * 0.16,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: makeOutlinedButton(
              size,
              child: Icon(Icons.memory),
            ),
            title: makeText(
              'Internal Space',
              color: Colors.white,
            ),
            subtitle: makeText(
              '36.2 GB of 64 GB - 60%',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: LinearProgressIndicator(
                minHeight: size.height * 0.012,
                value: 0.59,
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
              vertical: size.height * 0.01,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                makeText(
                  "36.2 GB",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                makeText(
                  "64 GB",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1575626443698-f9dcfab3759c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1581&q=80",
          ),
        ),
        Icon(
          Icons.notification_important,
          size: Theme.of(context).textTheme.headline4.fontSize,
        ),
      ],
    );
  }
}
