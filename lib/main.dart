import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tutorial/custom_icon.dart';

void main() {
  runApp(FlutterTutorialApp());
}

class FlutterTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      home: Scaffold (
        appBar: AppBar(
          title: const Text("Flutter Tutorial"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
         body: Align(
           child: IconButton(
             icon: Icon(
               Custom_Icon.youtube_svgrepo_com,
             ),
             color: Colors.red,
             iconSize: 100.0,
             onPressed: () {
               print("BUTTON PRESSED");
             },
           ),
           alignment: Alignment(0, 0),
         ),
        floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: const Text("Add"),
            backgroundColor: Colors.indigo
        ),
      ),
    );
  }
}
