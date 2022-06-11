import 'package:flutter/material.dart';

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
        body: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: "RobotoMono",
              color: Colors.black
            ),
            children: <TextSpan>[
              TextSpan(text: "Hello, "),
              TextSpan(
                style: TextStyle(
                  color: Colors.indigo,
                ),
                children: <TextSpan>[
                  TextSpan(text: "Brave "),
                  TextSpan(text: "New "),
                  TextSpan(
                      text: "World",
                      style: TextStyle(
                        decoration: TextDecoration.underline
                      )
                  ),
                ]
              ),
              TextSpan(text: "!"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => {
            },
            child: const Text("Add"),
            backgroundColor: Colors.indigo
        ),
      ),
    );
  }
}
