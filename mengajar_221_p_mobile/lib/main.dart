import 'package:flutter/material.dart';
import 'package:mengajar_221_p_mobile/screen/mahasiswa_create.dart';
import 'package:mengajar_221_p_mobile/screen/mahasiswa_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      initialRoute: MahasiswaList.routeName,
      routes: {
        MahasiswaList.routeName: (context) => const MahasiswaList(),
        MahasiswaCreate.routeName: (context) => const MahasiswaCreate(),
      },
    );
  }
}
