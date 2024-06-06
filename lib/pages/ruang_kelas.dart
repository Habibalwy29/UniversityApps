import 'package:flutter/material.dart';

class CekRuangKelasPage extends StatefulWidget {
  @override
  _CekRuangKelasPageState createState() => _CekRuangKelasPageState();
}

class _CekRuangKelasPageState extends State<CekRuangKelasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cek Ruang Kelas'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat datang di halaman Cek Ruang Kelas UNY Apps',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text('Cek Ruang Kelas Page'),
          ],
        ),
      ),
    );
  }
}