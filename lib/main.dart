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
        body: Column (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            CustomContainer(30, "Cyan", 10, Colors.cyan),
            CustomContainer(40, "Purple", 20, Colors.purple),
            CustomContainer(50, "Yellow", 30, Colors.yellow),
          ],
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
  final double paddingNumber;
  final String textString;
  final double textSize;
  final Color containerColor;

  const CustomContainer(this.paddingNumber, this.textString, this.textSize, this.containerColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(textString,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: textSize,
          ),
        ),
      ),
      padding: EdgeInsets.all(paddingNumber),
      decoration: BoxDecoration(
        color: containerColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
