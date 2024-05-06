import 'package:flutter/material.dart';

class Cptwo extends StatefulWidget {
  const Cptwo({super.key});

  @override
  State<Cptwo> createState() => _CptwoState();
}

class _CptwoState extends State<Cptwo> {
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
    Offset center = Offset(size.width / 2, size.height / 2);

    Paint paint = Paint();
    paint.color = Colors.pinkAccent;

    // canvas.drawRect(Rect.fromLTWH(10, 15, size.width, size.height), paint);
    canvas.drawRect(Rect.fromCircle(center: center, radius: 50), paint);
    canvas.drawOval(const Rect.fromLTRB(10, 20, 100, 150), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
