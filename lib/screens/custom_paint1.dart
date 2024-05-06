import 'package:flutter/material.dart';

class Cpone extends StatefulWidget {
  const Cpone({super.key});

  @override
  State<Cpone> createState() => _CponeState();
}

class _CponeState extends State<Cpone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Custom Paint 1"),
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
    paint.strokeWidth = 2;
    paint.color = Colors.purpleAccent;

    Paint circlePaint = Paint();
    circlePaint.strokeWidth = 2;
    circlePaint.color = Colors.teal;
    circlePaint.style = PaintingStyle.stroke;
//circlePaint.style = PaintingStyle.fill;
    canvas.drawLine(Offset.zero, Offset(size.width, 0), paint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 70, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
