import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

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

  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  @override
  void initState() {
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    stream.listen( (event) {
      setState(() {
        lastNumber = event;
      });
    } );
    super.initState();
    // colorStream = ColorStream();
    // changeColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Angga"),
      ),
      // Container(
      //   decoration: BoxDecoration(color: bgColor),
      // ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(lastNumber.toString()),
            ElevatedButton(
                onPressed: () => addRandomNumber(),
                child: const Text("New Random Number")
            ),
          ],
        ),
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

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
  }

  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
  }

  /*
    Jawaban Soal 5 Point Pertama:
      - listen: memanggil callback setiap kali ada event baru, proses akan berjalan terus tanpa menunggu peristiwa selanjutnya.
      - await for: akan menunggu setiap elemen yang diterima dari stream sebelum melanjutkan ke iterasi berikutnya.  
  */

  /*
    Jawaban Soal 6 Point Pertama:
      - fungsi initState(): Fungsi ini akan dijalankan saat aplikasi pertama kali dijalankan, membuat objek
        NumberStream dan mengisi variabel numberStreamController dengan objek sebelumnya, lalu mengambil stream
        dan setiap kali ada perubahan, maka nilai lastNumber akan diperbarui menggunakan SetState().
      - fungsi addRandomNumber(): Fungsi ini berguna untuk menjeneral angka acak antara 0 sampai 9, menambahkan
        angka yang dihasilkan ke dalam fungsi addNumberToSink(number).
      - fungsi dispose(): Fungsi ini untuk menutup numberStateController untuk membersihkan sumber daya.
  */
}
