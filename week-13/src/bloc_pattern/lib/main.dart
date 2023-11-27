import 'package:bloc_pattern/random_bloc.dart';
import 'package:bloc_pattern/random_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Pattern',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const RandomScreen(),
    );
  }
}

/*
  Jawaban Soal 13 Point Pertama:
    - Maksudnya adalah membuat pattern bloc pada aplikasi yang mana nanti fungsinya akan berdampak
      jika aplikasinya cukup besar, saat membuat class RandomBloc, class tersebut merupakan bloc
      dan saat ingin menghubungkan dengan class RandomScreen, sebelumnya mendeklarasikan variabel
      _blocRandomNumber, variabel inilah yang menghubungkan class bloc dengan pengguna class bloc
      tersebut.
*/

