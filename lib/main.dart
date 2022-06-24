import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tutorial/custom_icon.dart';

const purple1 = const Color.fromRGBO(106, 103, 206, 1);
const yellowAccent = const Color.fromRGBO(238, 243, 210, 1);

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
          backgroundColor: purple1,
        ),
         body: Container(
           child: Container(
             child: IconButton(
               icon: const Icon(
                 Custom_Icon.youtube_svgrepo_com,
               ),
               color: purple1,
               iconSize: 100.0,
               onPressed: () {
                 print("BUTTON PRESSED");
               },
             ),
             decoration: BoxDecoration(
               color: Colors.cyanAccent,
               shape: BoxShape.circle,
               border: Border.all(
                 width: 5,
                 color: purple1,
                 style: BorderStyle.solid,
               ),
               boxShadow: [
                 BoxShadow(
                   color: Colors.black26,
                   spreadRadius: 4,
                   blurRadius: 20,
                   offset: Offset(4, 3),
                 ),
               ],
             ),
           ),
           alignment: Alignment.center,
           decoration: BoxDecoration(
             gradient: LinearGradient(
                 colors: [
                   Colors.purple,
                   Colors.indigo.withOpacity(0.8),
                   Colors.blue.withOpacity(0.7),
                 ]
             ),
           )
         ),
        floatingActionButton: const FloatingActionButton(
            onPressed: null,
            child: Text("Add"),
            backgroundColor: purple1,
        ),
      ),
    );
  }
}
