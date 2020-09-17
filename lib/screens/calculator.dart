import 'package:calculator/components/keyboard.dart';
import 'package:calculator/models/memory.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';
import '../components/keyboard.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Color.fromRGBO(9, 27, 61, 1),
          primaryColorLight: Color.fromRGBO(55, 65, 104, 1),
          primaryColorDark: Color.fromRGBO(0, 0, 24, 1),
          accentColor: Color.fromRGBO(239, 66, 37, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Column(children: <Widget>[
          Display(memory.value),
          Keyboard(_onPressed),
        ]));
  }
}
