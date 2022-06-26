import 'package:flutter/material.dart';

const purple1 = Color.fromRGBO(106, 103, 206, 1);
const yellowAccent = Color.fromRGBO(238, 243, 210, 1);

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomContainer("Hello, World", 20, Colors.greenAccent),

              SizedBox(
                height: 40,
              ),

              CustomContainer("Hello, World 2", 20, Colors.blue),
            ],
          ),
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

class CustomContainer extends StatelessWidget{
  final String textString;
  final double textSize;
  final Color containerColor;

  const CustomContainer(this.textString, this.textSize, this.containerColor,);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(200, 200),
      child: Container(
        child: Text(
          textString,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.bold,
            fontFamily: "RobotoMono"
          ),
        ),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: containerColor,
        ),
      ),
      //padding: const EdgeInsets.all(20),
    );
  }
}
