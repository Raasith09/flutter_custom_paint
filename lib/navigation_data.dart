import 'package:flutter/material.dart';
import 'package:flutter_custompaint/screens/custom_paint1.dart';
import 'package:flutter_custompaint/screens/custom_paint2.dart';
import 'package:flutter_custompaint/screens/custom_paint3.dart';
import 'package:flutter_custompaint/screens/custom_paint4.dart';
import 'package:flutter_custompaint/screens/custom_paint5.dart';
import 'package:flutter_custompaint/screens/custom_paint6.dart';

class NavigationData extends StatefulWidget {
  const NavigationData({super.key});
  @override
  State<NavigationData> createState() => _NavigationDataState();
}

class _NavigationDataState extends State<NavigationData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: const Text(
                    "CP-Line & Circle",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Cpone()));
                  },
                  tileColor: Colors.purple,
                ),
                const SizedBox(height: 10),
                ListTile(
                  title: const Text(
                    "CP-Rect",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Cptwo()));
                  },
                  tileColor: Colors.purple,
                ),
                const SizedBox(height: 10),
                ListTile(
                  title: const Text(
                    "CP-RRect",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Cpthree()));
                  },
                  tileColor: Colors.purple,
                ),
                const SizedBox(height: 10),
                ListTile(
                  title: const Text(
                    "CP-DRRect",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Cpfour()));
                  },
                  tileColor: Colors.purple,
                ),
                const SizedBox(height: 10),
                ListTile(
                  title: const Text(
                    "CP-ColorCanvas",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Cpfive()));
                  },
                  tileColor: Colors.purple,
                ),
                const SizedBox(height: 10),
                ListTile(
                  title: const Text(
                    "CP-PlotPoints",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Cpsix()));
                  },
                  tileColor: Colors.purple,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
