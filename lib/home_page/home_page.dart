import 'package:flutter/material.dart';

import 'package:flex_example/shared/test_container.dart';
import 'package:flex_example/shared/text_with_padding.dart';

import 'package:flex_example/home_page/widgets/horizontal_flex_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _verticalFlex = 2;
  int _horizontalFlex = 2;
  bool _isAxisAlignCenter = false;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.spaceBetween;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            const Spacer(),

            Text('Flex-approach. Horizontal flex $_horizontalFlex'),
            const SizedBox(height: 10.0),
            Expanded(
              child: InkWell(
                onTap: _changeHorizontalFlex,
                splashColor: Colors.transparent,
                child: HorizontalFlexWidget(containersFlex: _horizontalFlex),
              ),
            ),

            TextWithPadding('Static + AxisAlignment: $_mainAxisAlignment'),
            InkWell(
              onTap: _getAxisAlignment,
              splashColor: Colors.transparent,
              child: Row(
                mainAxisAlignment: _mainAxisAlignment,
                children: [
                  TestContainer(color: Colors.deepOrange),
                  TestContainer(color: Colors.yellowAccent),
                ],
              ),
            ),

            TextWithPadding('Flex-approach. Vertical flex: $_verticalFlex'),
            Expanded(
              flex: _verticalFlex,
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: _changeVerticalFlex,
                child: TestContainer(color: Colors.amber),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }

  void _changeHorizontalFlex() {
    if (_horizontalFlex == 5) _horizontalFlex = 0;
    _horizontalFlex++;
    setState(() {});
  }

  void _changeVerticalFlex() {
    if (_verticalFlex == 4) _verticalFlex = 0;
    _verticalFlex++;
    setState(() {});
  }

  void _getAxisAlignment() {
    if (_isAxisAlignCenter) {
      _mainAxisAlignment = MainAxisAlignment.spaceBetween;
    } else {
      _mainAxisAlignment = MainAxisAlignment.center;
    }
    _isAxisAlignCenter = !_isAxisAlignCenter;
    setState(() {});
  }
}
