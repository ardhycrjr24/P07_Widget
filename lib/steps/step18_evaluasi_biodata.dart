import 'package:flutter/material.dart';

void main() {
  runApp(const Step18App());
}

class Step18App extends StatelessWidget {
  const Step18App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Diri App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({Key? key}) : super(key: key);

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: Colors.blue.shade700, size: 22.0),
          const SizedBox(width: 12.0),
          SizedBox(
            width: 110.0,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.5,
              ),
            ),
          ),
          const Text(': ', style: TextStyle(fontWeight: FontWeight.bold)),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 14.5),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Evaluasi 3: Biodata Mahasiswa'),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 65.0,
                    backgroundColor: Colors.blue.shade100,
                    backgroundImage: const AssetImage('images/logo_polbeng.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: CircleAvatar(
                      radius: 18.0,
                      backgroundColor: Colors.blue.shade700,
                      child: const Icon(
                        Icons.verified,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12.0),
            const Text(
              'ARDIANSYAH',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            Text(
              'NIM: 6304250091 • D4 Rekayasa Perangkat Lunak',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20.0),
            Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.person_pin, color: Colors.blue.shade800),
                        const SizedBox(width: 8.0),
                        const Text(
                          'Informasi Biodata Lengkap',
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Divider(thickness: 1.2),
                    _buildInfoRow(Icons.person, 'Nama Lengkap', 'Ardiansyah'),
                    _buildInfoRow(Icons.badge, 'NIM', '6304250091'),
                    _buildInfoRow(Icons.school, 'Program Studi', 'D4 Rekayasa Perangkat Lunak'),
                    _buildInfoRow(Icons.cake, 'TTL', 'Bengkalis, 24 Juli 2004'),
                    _buildInfoRow(Icons.email, 'Email', 'ardhy95@gmail.com'),
                    _buildInfoRow(Icons.phone_android, 'Nomor HP', '0822-8899-7711'),
                    _buildInfoRow(Icons.palette, 'Hobby', 'Pemrograman Mobile & Desain UI/UX'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
