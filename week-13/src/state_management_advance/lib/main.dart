import 'package:flutter/material.dart';
import 'stream.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Jawaban Soal Nomor 1 Point Pertama
      title: "Angga",
      theme: ThemeData(
        // Jawaban Soal Nomor 1 Point Kedua
        primarySwatch: Colors.teal,
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
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  @override
  void initState() {
    super.initState();
    colorStream = ColorStream();
    changeColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Angga"),
      ),
      body: Container(
        decoration: BoxDecoration(color: bgColor),
      ),
    );
  }

  void changeColor() async {
    // await for (var eventColor in colorStream.getColors()) {
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    // }

    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  /*
    Jawaban Soal 5 Point Pertama:
      - listen: memanggil callback setiap kali ada event baru, proses akan berjalan terus tanpa menunggu peristiwa selanjutnya.
      - await for: akan menunggu setiap elemen yang diterima dari stream sebelum melanjutkan ke iterasi berikutnya.  
  */
}
