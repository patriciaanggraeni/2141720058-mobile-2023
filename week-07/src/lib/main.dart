import 'package:flutter/material.dart';
import 'package:flutter_layout/praktikum/praktikum_dua.dart';
import 'package:flutter_layout/praktikum/praktikum_satu.dart';
import 'package:flutter_layout/praktikum/praktikum_tiga.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Layout: Patria Anggara Susilo Putra | 2141720058',
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Flutter Layout Demo"),
            ),
            body: Column(
              children: [
                FlutterLayout().titleSection(),
                ButtonRow(context: context).buttonSection(),
                TextSection().textSection(),
              ]
            )
        )
    );
  }
}
