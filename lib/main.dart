import 'package:flutter/material.dart';

const purple1 = Color.fromRGBO(106, 103, 206, 1);
const yellowAccent = Color.fromRGBO(238, 243, 210, 1);

void main() {
  runApp(const FlutterTutorialApp());
}

class FlutterTutorialApp extends StatelessWidget {
  const FlutterTutorialApp({Key? key}) : super(key: key);


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
          child: Stack(
            alignment: Alignment.center,
            children: const [
              CustomContainer(400, "1", 10, Colors.cyan),
              Positioned(
                top: 20,
                left: 20,
                child: CustomContainer(300, "2", 10, Colors.deepPurpleAccent),
              ),
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
  final double sizeOfSquare;
  final String textString;
  final double textSize;
  final Color containerColor;

  const CustomContainer(this.sizeOfSquare, this.textString, this.textSize, this.containerColor,);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.square(sizeOfSquare),
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
