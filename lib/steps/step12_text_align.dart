import 'package:flutter/material.dart';

void main() {
  runApp(const Step12App());
}

class Step12App extends StatelessWidget {
  const Step12App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextAlign App',
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
  final String teks1 =
      '''Nilai TextAlign.start pada teks dengan TextDirection.ltr''';
  final String teks2 =
      '''Nilai TextAlign.end pada teks dengan TextDirection.ltr''';
  final String teks3 =
      '''Nilai TextAlign.start pada teks dengan TextDirection.rtl''';
  final String teks4 =
      '''Nilai TextAlign.end pada teks dengan TextDirection.rtl''';

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode Text.textAlign'),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey.shade200,
            child: Text(
              teks1,
              style: const TextStyle(
                fontSize: 16.0,
              ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey.shade200,
            child: Text(
              teks2,
              style: const TextStyle(
                fontSize: 16.0,
              ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.end,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey.shade200,
            child: Text(
              teks3,
              style: const TextStyle(
                fontSize: 16.0,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey.shade200,
            child: Text(
              teks4,
              style: const TextStyle(
                fontSize: 16.0,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
