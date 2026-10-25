import 'package:flutter/material.dart';

void main() {
  runApp(const Step5App());
}

class Step5App extends StatelessWidget {
  const Step5App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Widget App',
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
        title: const Text('Demo Column Widget'),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Button 1'),
              onPressed: () {},
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Button 2'),
              onPressed: () {},
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Button 3'),
              onPressed: () {},
            ),
            Container(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Button 4'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
