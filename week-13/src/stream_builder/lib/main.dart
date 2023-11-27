import 'package:flutter/material.dart';
import 'package:stream_builder/stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  late Stream<int> numberStream;

  @override
  void initState() {
    numberStream = NumberStream().getNumbers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream"),
      ),
      body: StreamBuilder(
        stream: numberStream,
        initialData: 0,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("Error");
          }
          if (snapshot.hasData) {
            return Center(
              child: Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 96),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

/*
  Jawaban Soal 12 Point Pertama:
    - Langkah 3: Membuat angka acak dengan range 0 - 9, lalu mengirimkan data tersebut menggunakan
      yield* ke Stream.
    - Langkah 7: Data yang sebelumnya sudah dialirkan ke stream, dalam BuildStream terdapat parameter
      bernama stream, ini merupakan destinasi data yang dialirkan oleh Stream, dan parameter build yang
      memiliki fungsi lambda di mana parameter kedua "snapshot", parameter ini akan menerima data dari
      stream, dan di dalamnya melakukan pengecekan, kalau ada error maka print error, kalau mempunyai
      data maka tampilkan datanya, kalau lainnya maka return SizedBox.

*/