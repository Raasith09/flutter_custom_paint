import 'package:flutter/material.dart';
import "dart:ui" as ui;

class Cpfive extends StatefulWidget {
  const Cpfive({super.key});

  @override
  State<Cpfive> createState() => _CpfiveState();
}

class _CpfiveState extends State<Cpfive> {
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
      ..strokeWidth = 2
      ..style = PaintingStyle.fill
      // ..color = Colors.limeAccent;
      ..shader = ui.Gradient.linear(Offset(size.width / 2, 0),
          Offset(size.width / 2, size.height / 2), [Colors.blue, Colors.pink]);

    // To prevent the color out of canvas
    canvas.clipRect(Offset.zero & size);
    canvas.drawPaint(paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
