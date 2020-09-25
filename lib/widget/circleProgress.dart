import 'dart:math';

import 'package:flutter/material.dart';

class CircleProgress extends CustomPainter {
  int currentProgress;
  CircleProgress(this.currentProgress);

  @override
  void paint(Canvas canvas, Size size) {
    Paint outerCircle = Paint()
      ..strokeWidth = 10
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    Paint completeArc = Paint()
      ..strokeWidth = 10
      ..color = Color(0xFFde4463)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2) - 7;

    double angle = 2 * pi * (currentProgress / 60);
    canvas.drawCircle(center, radius, outerCircle);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        angle, false, completeArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
