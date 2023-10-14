import 'package:flutter/material.dart';
import 'package:flutter_layout/layout_basics/main.dart';
import 'package:flutter_layout/praktikum/praktikum_dua.dart';
import 'package:flutter_layout/praktikum/praktikum_empat.dart';
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
            body: const Column(
              children: [
                BlueBox(),
                BlueBox(),
                BlueBox()
                // ImageSection().imageSection(),
                // FlutterLayout().titleSection(),
                // ButtonRow(context: context).buttonSection(),
                // TextSection().textSection(),
              ]
            )
        )
    );
  }
}
