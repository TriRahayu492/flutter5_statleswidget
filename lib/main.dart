import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Menentukan teks berada di sisi kiri
        children: [
          Text(
            teks1,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 31, 114, 208),
            ),
          ),
          Text(
            teks2,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 61, 59, 59),
            ),
          ),
        ],
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Mahasiswa'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Menentukan teks berada di sisi kiri
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TeksUtama(
                teks1: 'Kartika Puspa Sejati',
                teks2: 'NIM : STI202102341',
              ),
              TeksUtama(
                teks1: 'Amanda Refti Mariska',
                teks2: 'NIM : STI202102342',
              ),
              TeksUtama(
                teks1: 'Tri Rahayu',
                teks2: 'NIM : STI202102347',
              ),
              TeksUtama(
                teks1: 'Ghaza Gymnastiar',
                teks2: 'NIM : STI202102370',
              ),
              TeksUtama(
                teks1: 'Laely Fabilah Mizaluna',
                teks2: 'NIM : STI202102375',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
