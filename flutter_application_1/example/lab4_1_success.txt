import 'package:flutter/material.dart';
import 'package:flutter_application_1/money_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account Chontis',
            style: TextStyle(fontSize: 30, color: Colors.lightGreenAccent)),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MonkeyBox('ยอดคงเหลือ', 5000.55, Colors.black87, 150),
            MonkeyBox('รายจ่าย', 1500.55, Colors.black87, 150),
            MonkeyBox('รายรับ', 3000.55, Colors.black87, 150),
            ],
        ),
      ),
    );
  }
}
