import 'package:flutter/material.dart';

void main() {
  runApp(const Step17App());
}

class Step17App extends StatelessWidget {
  const Step17App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deskripsi Hari App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DayDescriptionPage(),
    );
  }
}

class DayDescriptionPage extends StatefulWidget {
  const DayDescriptionPage({Key? key}) : super(key: key);

  @override
  State<DayDescriptionPage> createState() => _DayDescriptionPageState();
}

class _DayDescriptionPageState extends State<DayDescriptionPage> {
  String _selectedDay = 'Senin';
  String _description = 'Hari yang luar biasa untuk memulai pekerjaanmu.';

  final Map<String, String> _dayData = {
    'Senin': 'Hari yang luar biasa untuk memulai pekerjaanmu.',
    'Selasa': 'Tetap semangat mengerjakan tugas.',
    'Rabu': 'Selalu bahagia dan bersyukur dengan apa yang telah diperoleh.',
    'Kamis': 'Kerja keras untuk menggapai cita-cita.',
    'Jumat': 'Jangan lupa untuk beribadah.',
    'Sabtu': 'Selamat weekend.',
    'Minggu': 'Manfaatkan hari minggumu untuk istrahat.',
  };

  void _onDaySelected(String day) {
    setState(() {
      _selectedDay = day;
      _description = _dayData[day] ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Evaluasi 2: Deskripsi Hari'),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Pilih Hari untuk Melihat Deskripsi:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _dayData.keys.map((day) {
                final isSelected = day == _selectedDay;
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        isSelected ? Colors.blue.shade700 : Colors.blue.shade100,
                    foregroundColor: isSelected ? Colors.white : Colors.blue.shade900,
                  ),
                  onPressed: () => _onDaySelected(day),
                  child: Text(day),
                );
              }).toList(),
            ),
            const SizedBox(height: 24.0),
            Card(
              elevation: 4.0,
              color: Colors.blue.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.blue.shade300, width: 1.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.calendar_today, color: Colors.blue.shade800),
                        const SizedBox(width: 8.0),
                        Text(
                          'Hari: $_selectedDay',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900,
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 20.0, thickness: 1.5),
                    Text(
                      _description,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                        height: 1.4,
                      ),
                    ),
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
