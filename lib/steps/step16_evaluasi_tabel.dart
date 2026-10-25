import 'package:flutter/material.dart';

void main() {
  runApp(const Step16App());
}

class Step16App extends StatelessWidget {
  const Step16App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabel Mahasiswa App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const TablePage(),
    );
  }
}

class TablePage extends StatelessWidget {
  const TablePage({Key? key}) : super(key: key);

  Widget _buildRow(String no, String nim, String nama, {bool isHeader = false}) {
    final style = TextStyle(
      fontSize: 16.0,
      fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
      color: isHeader ? Colors.white : Colors.black87,
    );
    final bg = isHeader
        ? Colors.blue.shade700
        : (no == '2' ? Colors.grey.shade100 : Colors.white);

    return Container(
      color: bg,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 50.0,
            child: Text(no, textAlign: TextAlign.center, style: style),
          ),
          Container(width: 1.0, height: 24.0, color: Colors.grey.shade400),
          SizedBox(
            width: 120.0,
            child: Text('  $nim', style: style),
          ),
          Container(width: 1.0, height: 24.0, color: Colors.grey.shade400),
          Expanded(
            child: Text('  $nama', style: style),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Evaluasi 1: Tabel Mahasiswa'),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Data Mahasiswa (Row & Column)',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade700, width: 2.0),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                children: <Widget>[
                  _buildRow('No', 'NIM', 'NAMA', isHeader: true),
                  _buildRow('1', '1106315', 'Depandi Enda'),
                  const Divider(height: 1, thickness: 1),
                  _buildRow('2', '1106316', 'Budi Handoyo'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
