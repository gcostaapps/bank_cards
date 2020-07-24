import 'dart:math';

import 'package:flutter/material.dart';

class FlippableWidget extends StatefulWidget {
  final Widget frontWidget;
  final Widget backWidget;
  final bool isFront;

  const FlippableWidget(
      {Key key,
      @required this.frontWidget,
      @required this.backWidget,
      this.isFront = true})
      : super(key: key);

  @override
  _FlippableWidgetState createState() => _FlippableWidgetState();
}

class _FlippableWidgetState extends State<FlippableWidget> {
  bool isFront;
  double verticalDrag = 0;

  @override
  void initState() {
    isFront = widget.isFront;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onVerticalDragUpdate: (vertical) {
          setState(() {
            verticalDrag += vertical.delta.dy;
            verticalDrag %= 360;
            if (verticalDrag <= 90 || verticalDrag >= 270) {
              isFront = true;
            } else {
              isFront = false;
            }
          });
        },
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX((verticalDrag * pi) / 180),
          alignment: Alignment.center,
          child: isFront
              ? widget.frontWidget
              : Transform(
                  transform: Matrix4.identity()..rotateX(pi),
                  alignment: Alignment.center,
                  child: widget.backWidget),
        ));
  }
}
