import 'package:flutter/material.dart';

void main() {
  runApp(const Step13App());
}

class Step13App extends StatelessWidget {
  const Step13App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listview Image App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Listview Image'),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/logo_kemdikbud.jpg',
            height: 250.0,
            fit: BoxFit.contain,
          ),
          const Divider(thickness: 2),
          Image.asset(
            'images/logo_polbeng.png',
            height: 250.0,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
