import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final bool big;
  final Color textColor;

  final void Function(String) cb;

  Button({
    @required this.text,
    this.big = false,
    this.textColor = Colors.white,
    @required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: FlatButton(
        color: Theme.of(context).primaryColorDark,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: textColor,
            fontSize: 32,
          ),
        ),
        shape: Border.all(width: 0),
        onPressed: () => cb(text),
      ),
    );
  }
}
