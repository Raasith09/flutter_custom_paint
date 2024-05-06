import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import "dart:ui" as ui;

class Cpsix extends StatefulWidget {
  const Cpsix({super.key});

  @override
  State<Cpsix> createState() => _CpsixState();
}

class _CpsixState extends State<Cpsix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Custom Paint 2"),
      ),
      body: Center(
        child: Container(
          color: Colors.grey.shade300,
          child: CustomPaint(
            size: const Size(300, 400),
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 3
      ..color = Colors.brown;

    final List<Offset> points = [
      Offset.zero,
      Offset(size.width, 0),
      Offset(size.width / 2, size.height / 2),
      Offset.zero
    ];
// you can change the point mode by lines,points, polygons
    canvas.drawPoints(PointMode.polygon, points, paint);

// below method are same as draw points but this is more optimised.

    // final Float32List points = Float32List.fromList(
    //     [0, 0, size.width, 0, size.width / 2, size.height / 2, 0, 0]);

    // canvas.drawRawPoints(PointMode.polygon, points, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
