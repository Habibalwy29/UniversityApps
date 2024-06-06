import 'package:flutter/material.dart';

class InformasiUKMPage extends StatefulWidget {
  @override
  _InformasiUKMPageState createState() => _InformasiUKMPageState();
}

class _InformasiUKMPageState extends State<InformasiUKMPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi UKM'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat datang di halaman Informasi UKM UNY Apps',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text('Informasi UKM Page'),
          ],
        ),
      ),
    );
  }
}