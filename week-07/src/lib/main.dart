import 'package:flutter/material.dart';
import 'package:flutter_layout/layout_basics/main.dart';
import 'package:flutter_layout/pages/home_page.dart';
import 'package:flutter_layout/pages/item_page.dart';
import 'package:flutter_layout/praktikum/praktikum_dua.dart';
import 'package:flutter_layout/praktikum/praktikum_empat.dart';
import 'package:flutter_layout/praktikum/praktikum_satu.dart';
import 'package:flutter_layout/praktikum/praktikum_tiga.dart';

import 'models/item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Item> items = HomePage().items;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/homepage': (context) => HomePage(),
          '/item': (context) =>  const ItemPage(),
        },
        title: 'Flutter Layout: Patria Anggara Susilo Putra | 2141720058',
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Daftar Item"),
            ),
            body: Container(
              margin: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipOval(
                        child: Image(
                          image: AssetImage("assets/images/profile.jpg"),
                          width: 75,
                        ),
                      ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           "Patria Anggara Susilo Putra",
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         SizedBox(height: 10,),
                         Text(
                            "2141720058",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                       ],
                     )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return InkWell(
                          onTap: () => Navigator.pushNamed(context, "/item", arguments: item),
                          child: Card(
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Expanded(child: Text(item.name)),
                                  Expanded(
                                    child: Text(
                                      item.price.toString(),
                                      textAlign: TextAlign.end,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
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

/*
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
                                child: Image(
                              image: AssetImage("assets/images/profile.jpg"),
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ))),
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
                              Text(
                                '123 Main Street',
                              ),
                              SizedBox(width: 20),
                              Text(
                                '(415) 555-0198',
                              ),
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
*/