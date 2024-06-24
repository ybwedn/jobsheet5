import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Stateless Widget'),
          backgroundColor: Colors.blue, // Mengatur warna biru pada AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeksUtama(
                teks1: '',
                teks2: 'Daftar Absensi #113 Mobile Programming Lanjut',
              ),
              TeksUtama(
                teks1: 'Septaheksa Panggih Ardiansyah',
                teks2: 'STI20212266',
              ),
              TeksUtama(
                teks1: 'Bangun Utomo Putra',
                teks2: 'STI202102269',
              ),
              TeksUtama(
                teks1: 'Yoga Surya Pratama',
                teks2: 'STI202102270',
                backgroundColor: Colors
                    .greenAccent, // Menambahkan warna latar belakang hijau pada teks
              ),
              TeksUtama(
                teks1: 'Ajeng Dwi Febriana',
                teks2: 'STI202102273',
              ),
              TeksUtama(
                teks1: 'Yudha',
                teks2: 'STI202102274',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor; // Menambahkan parameter backgroundColor

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
    this.backgroundColor, // Menambahkan parameter backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color:
              backgroundColor, // Mengatur warna latar belakang sesuai dengan parameter
          child: Text(
            teks1,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 60, 255),
            ),
          ),
        ),
        Container(
          // Menggunakan Container untuk menambahkan latar belakang
          color:
              backgroundColor, // Mengatur warna latar belakang sesuai dengan parameter
          child: Text(
            teks2,
            textDirection: TextDirection.ltr,
          ),
        ),
      ],
    );
  }
}
