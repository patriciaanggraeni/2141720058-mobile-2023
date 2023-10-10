import 'package:flutter/material.dart';
import 'package:layout_flutter/praktikum/praktikum_satu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout: Patria Anggara Susilo Putra | 2141720058',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Layout Demo")
        ),
        body: Column(
          children: [
            PraktikumSatu().titleSection
          ]
        )
      )
    );
  }
}
