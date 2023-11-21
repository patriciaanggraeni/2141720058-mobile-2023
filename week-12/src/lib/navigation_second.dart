import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Patria Anggara Susilo Putraa - Navigation Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  color = Colors.purple.shade700;
                  Navigator.pop(context, color);
                },
                child: const Text("Purple"),
            ),
            ElevatedButton(
                onPressed: () {
                  color = Colors.blue.shade200;
                  Navigator.pop(context, color);
                },
                child: const Text("Light Blue"),
            ),
            ElevatedButton(
                onPressed: () {
                  color = Colors.yellow.shade500;
                  Navigator.pop(context, color);
                },
                child: const Text("Yellow"),
            ),
          ],
        ),
      ),
    );
  }
}

