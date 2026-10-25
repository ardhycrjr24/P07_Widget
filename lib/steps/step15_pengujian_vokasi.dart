import 'package:flutter/material.dart';

void main() {
  runApp(const Step15App());
}

class Step15App extends StatelessWidget {
  const Step15App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Action Button Vokasi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String fileName = 'images/logo_vokasi.jpg';

  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          fileName = 'images/logo_kemdikbud.jpg';
          break;
        case 1:
          fileName = 'images/logo_polbeng.png';
          break;
        case 2:
          fileName = 'images/logo_vokasi.jpg';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengujian Action Button & Vokasi'),
        backgroundColor: Colors.blue,
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.laptop),
            tooltip: 'Logo Kemdikbud',
            onPressed: () {
              selectImage(0);
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_balance),
            tooltip: 'Logo Polbeng',
            onPressed: () {
              selectImage(1);
            },
          ),
          IconButton(
            icon: const Icon(Icons.anchor),
            tooltip: 'Logo Vokasi',
            onPressed: () {
              selectImage(2);
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Image.asset(
              fileName,
              height: 350.0,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
