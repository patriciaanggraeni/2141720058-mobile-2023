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
            body: const Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Hey!',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Futura',
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Hey!',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Futura',
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Hey!',
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Futura',
                      color: Colors.red,
                    ),
                  ),
                ],
              )
            )
        )
    );
  }
}


// backup code
/*
Row(
                // mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // BlueBox(),
                  // Expanded(
                  //     child: BlueBox(),
                  // ),
                  // SizedBox(width: 50),
                  // Spacer(flex: 1),
                  // SizedBox(
                  //   width: 100,
                  //   child: BlueBox(),
                  // ),
                  // BlueBox(),
                  // BiggerBlueBox(),
                  // BlueBox()
                  // Flexible(
                  //   fit: FlexFit.tight,
                  //   flex: 1,
                  //   child: BlueBox(),
                  // ),
                  // Flexible(
                  //   fit: FlexFit.tight,
                  //   flex: 1,
                  //   child: BlueBox(),
                  // ),
                  // Flexible(
                  //   fit: FlexFit.loose,
                  //   flex: 1,
                  //   child: BlueBox(),
                  // ),
                  // Flexible(
                  //   fit: FlexFit.loose,
                  //   flex: 1,
                  //   child: BlueBox(),
                  // ),
                  // ImageSection().imageSection(),
                  // FlutterLayout().titleSection(),
                  // ButtonRow(context: context).buttonSection(),
                  // TextSection().textSection(),
                ]
              ),
*/