import 'package:flutter/material.dart';
import 'package:flowy_plugin/flowy_plugin.dart';

import 'dart:ui' as ui;

const DoubleDividerType = 'horizontal_double_rule';

class DoubleDividerWidgetBuilder extends NodeWidgetBuilder<Node> {
  @override
  Widget build(NodeWidgetContext<Node> context) {
    return DoubleDividerWidget(
      key: context.node.key,
      node: context.node,
      editorState: context.editorState,
    );
  }

  @override
  bool Function(Node) get nodeValidator => (node) {
    return true;
  };
}

class DoubleDividerWidget extends StatefulWidget {
  const DoubleDividerWidget({
    Key? key,
    required this.node,
    required this.editorState,
  }) : super(key: key);

  final Node node;
  final EditorState editorState;

  @override
  State<DoubleDividerWidget> createState() => DoubleDividerWidgetState();
}

class DoubleDividerWidgetState extends State<DoubleDividerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 5),
      // width: MediaQuery.of(context).size.width,
      height: 25,
      child: CustomPaint(
        painter: DoubleDividerPainter(),
      ),
    );
  }
}

class DoubleDividerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1.5;

    var path = ui.Path();
    path.moveTo(0, size.height-10);
    path.lineTo(size.width, size.height-10);
    path.moveTo(0, size.height-5);
    path.lineTo(size.width, size.height -5);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
