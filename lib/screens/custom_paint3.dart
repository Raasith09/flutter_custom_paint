import 'package:flutter/material.dart';

class Cpthree extends StatefulWidget {
  const Cpthree({super.key});

  @override
  State<Cpthree> createState() => _CpthreeState();
}

class _CpthreeState extends State<Cpthree> {
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
    Paint paint = Paint();
    paint.color = Colors.pinkAccent;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;
    Rect rect = const Rect.fromLTRB(10, 20, 100, 200);
// All the Corners
    // canvas.drawRRect(
    //     RRect.fromRectAndRadius(rect, const Radius.circular(20)), paint);

// needed corners
    // canvas.drawRRect(
    //     RRect.fromRectAndCorners(rect,
    //         topLeft: const Radius.circular(100),
    //         topRight: const Radius.circular(0)),
    //     paint);

// needed corners
    canvas.drawRRect(RRect.fromRectXY(rect, 70, 30), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
