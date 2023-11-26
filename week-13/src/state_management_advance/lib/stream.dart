import 'package:flutter/material.dart';
import 'dart:async';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,

    // Jawaban Soal Nomor 2 Point Pertama
    Colors.lime,
    Colors.pink,
    Colors.black12,
    Colors.cyan,
    Colors.indigo,
  ];

  // Jawaban Soal Nomor 3
  Stream<Color> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }

  /*
    Jawaban Soal Nomor 3 Point Pertama: fungsi keyword yield adalah untuk mengirimkan data ke stream / aliran, jadi data yang diolah
    dimasukkan ke yield dan yield nantinya akan mengirimkan data tersebut ke stream, lalu fungsi bintang digunakan jika menggunakan 
    proses asynchronous menggunakan stream.

    Jawaban Soal Nomor 3 Point Kedua: Perintah kode diatas adlaah untuk menampilkan warna acak dengan interval satu detik, warnanya 
    diambil dari list yang telah dibuat sebelumnya. Nilai paramter t akan bertambah setiap detiknya dan dimodulo agar tidak melebihi 
    batas panjang dari list warna.
  */
}

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  void close() {
    controller.close();
  }

}