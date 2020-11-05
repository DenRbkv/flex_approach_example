import 'package:flutter/material.dart';

import 'package:flex_example/shared/test_container.dart';

class HorizontalFlexWidget extends StatelessWidget {
  final int containersFlex;

  HorizontalFlexWidget({
    this.containersFlex,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: containersFlex,
          child: TestContainer(
            color: Colors.yellowAccent,
            height: null,
          ),
        ),
        const Spacer(),
        Expanded(
          flex: containersFlex,
          child: TestContainer(
            color: Colors.deepOrange,
            height: null,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
