import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* Soal No. 1 */
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /* Soal No. 2 */
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      "Wisata Gunung di Batu",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const Text(
                    "Batu, Malang, Indonesia",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
          ),
          /* Soal No. 3 */
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text("41"),
        ],
      )
  );

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
            titleSection,
          ]
        )
      )
    );
  }
}
