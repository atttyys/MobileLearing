import 'package:flutter/material.dart';
import 'package:flutter_application_1/neon_button.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
        primarySwatch: Colors.blue,
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
  Color shadowColor = Colors.redAccent;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NeonButton(Colors.red),
            NeonButton(Colors.greenAccent.shade700),
            NeonButton(Colors.blue),
            NeonButton(Colors.yellowAccent.shade700),
            NeonButton(Colors.blueAccent.shade700),
            NeonButton(Colors.white),
            SpinKitCircle(
              size: 140,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
