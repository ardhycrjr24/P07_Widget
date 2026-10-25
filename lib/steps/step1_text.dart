import 'package:flutter/material.dart';

void main() {
  runApp(const Step1App());
}

class Step1App extends StatelessWidget {
  const Step1App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Text Widget'),
          backgroundColor: Colors.blue,
          centerTitle: false,
        ),
        body: const Center(
          child: Text(
            'Rekayasa Perangkat Lunak',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
