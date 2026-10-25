import 'package:flutter/material.dart';

void main() {
  runApp(const Step4App());
}

class Step4App extends StatelessWidget {
  const Step4App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget App',
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
        title: const Text('Demo Row Widget'),
        backgroundColor: Colors.blue,
        centerTitle: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: const Text('Button 1'),
                onPressed: () {},
              ),
              Container(
                width: 10,
              ),
              ElevatedButton(
                child: const Text('Button 2'),
                onPressed: () {},
              ),
              Container(
                width: 10,
              ),
              ElevatedButton(
                child: const Text('Button 3'),
                onPressed: () {},
              ),
              Container(
                width: 10,
              ),
              ElevatedButton(
                child: const Text('Button 4'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
