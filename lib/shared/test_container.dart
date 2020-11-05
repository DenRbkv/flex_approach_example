import 'package:flutter/material.dart';

class TestContainer extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final double height;

  TestContainer({
    this.text = '',
    this.width = 100.0,
    this.height = 100.0,
    this.color = Colors.lightBlueAccent,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 5.0,
            spreadRadius: 2.0,
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
      child: Text(text),
    );
  }
}