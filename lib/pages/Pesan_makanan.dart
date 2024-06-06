import 'package:flutter/material.dart';

class PesanMakananPage extends StatefulWidget {
  @override
  _PesanMakananPageState createState() => _PesanMakananPageState();
}

class _PesanMakananPageState extends State<PesanMakananPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesan Makanan'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat datang di halaman Pesan Makanan UNY Apps',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text('Pesan Makanan Page'),
          ],
        ),
      ),
    );
  }
}