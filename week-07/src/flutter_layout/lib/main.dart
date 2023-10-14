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
            body: Center(
               child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ClipOval(
                            child:Image(
                              image: AssetImage("assets/images/profile.jpg"),
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            )
                          )
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Mr. Patria Anggara',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const Text('Experienced App Developer'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Text('123 Main Street',),
                              SizedBox(width: 20),
                              Text('(415) 555-0198',),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [],
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

/*
const Center(
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
*/

/*
 Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Icon(
                    Icons.widgets,
                    size: 50,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.widgets,
                    size: 50,
                    color: Colors.red,
                  ),
                ],
              ),
*/

/*
child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network('https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic2.jpg'),
                  ],
            )
*/