import 'dart:html' as html;
import 'package:flutter/material.dart';

import 'steps/step1_text.dart';
import 'steps/step2_elevated_button.dart';
import 'steps/step3_stateful_counter.dart';
import 'steps/step4_row.dart';
import 'steps/step5_column.dart';
import 'steps/step6_row_column.dart';
import 'steps/step7_column_row.dart';
import 'steps/step8_profil_polbeng.dart';
import 'steps/step9_edgeinsets_all.dart';
import 'steps/step10_edgeinsets_only.dart';
import 'steps/step11_softwrap.dart';
import 'steps/step12_text_align.dart';
import 'steps/step13_listview_image.dart';
import 'steps/step14_action_button.dart';
import 'steps/step15_pengujian_vokasi.dart';
import 'steps/step16_evaluasi_tabel.dart';
import 'steps/step17_evaluasi_hari.dart';
import 'steps/step18_evaluasi_biodata.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentStep = 0;

  @override
  void initState() {
    super.initState();
    html.window.addEventListener('message', (html.Event event) {
      if (event is html.MessageEvent) {
        final val = int.tryParse(event.data.toString());
        if (val != null) {
          setState(() {
            _currentStep = val;
          });
        }
      }
    });
  }

  Widget _getStepWidget(int step) {
    switch (step) {
      case 1:
        return const Step1App();
      case 2:
        return const Step2App();
      case 3:
        return const Step3App();
      case 4:
        return const Step4App();
      case 5:
        return const Step5App();
      case 6:
        return const Step6App();
      case 7:
        return const Step7App();
      case 8:
        return const Step8App();
      case 9:
        return const Step9App();
      case 10:
        return const Step10App();
      case 11:
        return const Step11App();
      case 12:
        return const Step12App();
      case 13:
        return const Step13App();
      case 14:
        return const Step14App();
      case 15:
        return const Step15App();
      case 16:
        return const Step16App();
      case 17:
        return const Step17App();
      case 18:
        return const Step18App();
      default:
        return const DashboardPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_currentStep > 0) {
      return _getStepWidget(_currentStep);
    }
    return MaterialApp(
      title: 'Praktikum 7 - Widget Dasar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _menuItems = const [
    {
      'no': '01',
      'title': 'Text Widget & Styling',
      'desc': 'Teks fontSize 30, italic, warna merah',
      'icon': Icons.text_fields,
      'widget': Step1App(),
    },
    {
      'no': '02',
      'title': 'ElevatedButton & AlertDialog',
      'desc': 'Tombol aksi dengan dialog pop-up',
      'icon': Icons.smart_button,
      'widget': Step2App(),
    },
    {
      'no': '03',
      'title': 'StatefulWidget (Counter)',
      'desc': 'Perubahan state dengan tombol << dan >>',
      'icon': Icons.add_circle_outline,
      'widget': Step3App(),
    },
    {
      'no': '04',
      'title': 'Row Widget',
      'desc': 'Penyusunan 4 tombol horizontal',
      'icon': Icons.view_column,
      'widget': Step4App(),
    },
    {
      'no': '05',
      'title': 'Column Widget',
      'desc': 'Penyusunan 4 tombol vertikal',
      'icon': Icons.table_rows,
      'widget': Step5App(),
    },
    {
      'no': '06',
      'title': 'Row di dalam Column',
      'desc': '1 Row memuat 3 Column (6 tombol)',
      'icon': Icons.grid_view,
      'widget': Step6App(),
    },
    {
      'no': '07',
      'title': 'Column di dalam Row',
      'desc': '1 Column memuat 3 Row (6 tombol)',
      'icon': Icons.dashboard_customize,
      'widget': Step7App(),
    },
    {
      'no': '08',
      'title': 'Penerapan UI Profil POLBENG',
      'desc': 'Gambar, lokasi, bintang rating, dan deskripsi',
      'icon': Icons.account_balance,
      'widget': Step8App(),
    },
    {
      'no': '09',
      'title': 'Jarak: EdgeInsets.all',
      'desc': 'Margin, padding, dan border merah',
      'icon': Icons.border_all,
      'widget': Step9App(),
    },
    {
      'no': '10',
      'title': 'Jarak: EdgeInsets.only',
      'desc': 'Pengaturan sisi tertentu (top, left, right)',
      'icon': Icons.crop_square,
      'widget': Step10App(),
    },
    {
      'no': '11',
      'title': 'Text: softWrap',
      'desc': 'Teks panjang otomatis mengikuti lebar layar',
      'icon': Icons.wrap_text,
      'widget': Step11App(),
    },
    {
      'no': '12',
      'title': 'Text: textAlign & Direction',
      'desc': 'Eksperimen start/end dan ltr/rtl',
      'icon': Icons.format_align_justify,
      'widget': Step12App(),
    },
    {
      'no': '13',
      'title': 'ListView Image',
      'desc': 'Daftar gambar bertumpuk dengan Divider',
      'icon': Icons.image,
      'widget': Step13App(),
    },
    {
      'no': '14',
      'title': 'Action Button AppBar',
      'desc': 'Ganti gambar dinamis via ikon AppBar',
      'icon': Icons.touch_app,
      'widget': Step14App(),
    },
    {
      'no': '15',
      'title': 'Pengujian Logo Vokasi & Jangkar',
      'desc': 'Data pengujian modul: logo_vokasi.jpg & Icons.anchor',
      'icon': Icons.anchor,
      'widget': Step15App(),
    },
    {
      'no': '16',
      'title': 'Evaluasi 1: Tabel Mahasiswa',
      'desc': 'Tabel data No, NIM, Nama via Row & Column',
      'icon': Icons.table_chart,
      'widget': Step16App(),
    },
    {
      'no': '17',
      'title': 'Evaluasi 2: Deskripsi Hari',
      'desc': 'Tombol interaktif Senin-Minggu dengan motivasi',
      'icon': Icons.calendar_today,
      'widget': Step17App(),
    },
    {
      'no': '18',
      'title': 'Evaluasi 3: Biodata Mahasiswa',
      'desc': 'Foto profil & data diri lengkap Ardiansyah',
      'icon': Icons.badge,
      'widget': Step18App(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('P07 - Widget Dasar Flutter'),
        backgroundColor: Colors.blue.shade800,
        centerTitle: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: _menuItems.length,
        itemBuilder: (context, index) {
          final item = _menuItems[index];
          final isEvaluasi = index >= 15;
          return Card(
            elevation: 2.0,
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(
                color: isEvaluasi ? Colors.orange.shade400 : Colors.blue.shade100,
                width: isEvaluasi ? 1.5 : 1.0,
              ),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor:
                    isEvaluasi ? Colors.orange.shade700 : Colors.blue.shade700,
                foregroundColor: Colors.white,
                child: Text(
                  item['no'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(
                item['title'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(item['desc']),
              trailing: Icon(
                item['icon'],
                color: isEvaluasi ? Colors.orange.shade800 : Colors.blue.shade800,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item['widget']),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
