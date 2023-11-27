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

  late StreamTransformer transformer;
  late StreamSubscription subscription;

  late StreamSubscription subscription2;
  String values = "";

  @override
  void initState() {
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream.asBroadcastStream();

    // Stream stream = numberStreamController.stream;
    // stream.listen( (event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // } ).onError( (error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });

    // transformer = StreamTransformer<int, int>.fromHandlers(
    //   handleData: (value, sink) {
    //     sink.add(value * 10);
    //   },
    //   handleError: (error, trace, sink) {
    //     sink.add(-1);
    //   },
    //   handleDone: (sink) => sink.close()
    // );
    //
    // stream.transform(transformer).listen( (event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // } ).onError( (error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });

    subscription = stream.listen( (event) {
      setState(() {
        values += "$event - ";
      });
    } );

    subscription2 = stream.listen( (event) {
      setState(() {
        values += "$event - ";
      });
    } );

    subscription.onError( (error) {
      setState(() {
        lastNumber = -1;
      });
    } );

    subscription.onDone( () {
      print("OnDone was called");
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
            Text(values),
            // Text(lastNumber.toString()),
            ElevatedButton(
                onPressed: () => addRandomNumber(),
                child: const Text("New Random Number")
            ),
            ElevatedButton(
                onPressed: () => stopStream(),
                child: const Text("Stop Subcription"),
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
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
    // numberStream.addError();
  }

  void stopStream() {
    numberStreamController.close();
  }

  @override
  void dispose() {
    subscription.cancel();
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

  /*
    Jawaban Soal 7 Point Pertama:
      - Kode program langkah 13 - 15 digunakan jika program mengalami error, contohnya seperti numberStream,
        pada fungsi addRandomNumber(), membuat objek random dan mengisi nilai random ke dalam fungsi
        addNumberToSink(number) (sebelumnya), sekarang program mengalami error karena tidak memasukkan angka
        acak pada fungsi addNumberToSink, maka dikasilah fungsi oneError untuk menghandle error yang terjadi,
        contoh di atas, jika program mengalami error, maka angka acak akan diset ke -1.
  */

  /*
    Jawaban Soal 8 Point Pertama:
      - Transformer digunakan untuk memanipulasi nilai (seperti contoh dikali dengan 10), sebelumnya range
        angka acak adalah 0 dampai 9, dengan dikalikan 10 maka range angka acak menjadi 0 - 90. Untuk tugas
        ini diserahkan pada handleData, untuk handleError akan mengirimkan nilai -1 jika terjadi error dan
        handleDone berfungsi menutup sink setelah stream selesai. angka dirubah dan ditampilkan menggunakan
        setState()
  */

  /*
    Jawaban Soal 9 Point Pertama:
      - Langkah 2: membuat langganan (StreamSubscription) ke suatu stream dan menentukan bahwa setiap
        kali ada data baru dalam stream, nilai lastNumber pada antarmuka pengguna akan diperbarui.
      - Langkah 6: digunakan untuk membersihkan sumber daya dan menghentikan pendengaran pada stream.
      - Langkah 8: menghasilkan angka acak dan mencoba menambahkannya ke dalam stream. jika
        stream sudah ditutup, maka nilai lastNumber diatur menjadi -1. Jadi, ada penanganan untuk
        situasi di mana stream sudah tidak dapat lagi menerima data.
  */

  /*
    Jawaban Soal 10:
      - Error "Bad state: Stream has already been listened to.", hal ini dikarenakan adanya multiple
        listener pada stream. di dart / flutter, listener hanya bisa digunakan satu kali.
  */

  /*
    Jawaban Soal 11 Point Pertama:
      - Program bisa dijalankan karena pada variabel stream memanggil fungsi asBroadcastStream(), hal
        ini memungkin kan aplikasi bisa mendengar beberapa listener sekaligus. Makanya saat tombol
        generate random number ditekan, kedua fungsi subcription terpanggil dan ditampilkan hasilnya.
  */
}
