import 'package:flutter/material.dart';

class Cpfour extends StatefulWidget {
  const Cpfour({super.key});

  @override
  State<Cpfour> createState() => _CpfourState();
}

class _CpfourState extends State<Cpfour> {
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
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;
    Rect bigRect = const Rect.fromLTRB(10, 20, 100, 200);
    Rect smallRect = const Rect.fromLTRB(20, 30, 100, 180);

    RRect bigRRect = RRect.fromRectXY(bigRect, 75, 25);
    RRect smallRRect = RRect.fromRectXY(smallRect, 75, 25);

    canvas.drawDRRect(bigRRect, smallRRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
