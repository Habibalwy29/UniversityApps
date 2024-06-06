import 'package:flutter/material.dart';
import 'absensi_page.dart'; // Import the AbsensiPage

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UNY Apps'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('Assets/vector1.jpg'),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'Selamat datang di UNY Apps',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                children: [
                  _buildMenuItem(context, Icons.check_circle, 'Absensi', const AbsensiPage(userName: "")),
                  _buildMenuItem(context, Icons.fastfood, 'Pesan Makanan', PesanMakananPage()),
                  _buildMenuItem(context, Icons.class_, 'Cek Ruang Kelas', CekRuangKelasPage()),
                  _buildMenuItem(context, Icons.info, 'Informasi UKM', InformasiUKMPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, IconData icon, String title, Widget route) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => route),
        );
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 50, color: const Color.fromARGB(255, 31, 36, 192)),
              const SizedBox(height: 8.0),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

void main() {
  runApp(MyApp());
}
