import 'package:flutter/material.dart';

class TextWithPadding extends StatelessWidget {
  final String text;

  TextWithPadding(
    this.text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25.0,
        bottom: 10.0,
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
