import 'package:flutter/material.dart';

void main() {
  runApp(const Step9App());
}

class Step9App extends StatelessWidget {
  const Step9App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdgeInsets.all App',
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
        title: const Text('Metode EdgeInsets.all'),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.tealAccent,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            child: ElevatedButton(
              child: const Text('Button 1'),
              onPressed: () {},
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                width: 5.0,
                color: Colors.red,
              ),
            ),
            child: ElevatedButton(
              child: const Text('Button 2'),
              onPressed: () {},
            ),
          ),
          Container(
            color: Colors.tealAccent,
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(3.0),
            child: ElevatedButton(
              child: const Text('Button 3'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
