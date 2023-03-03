import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/display.dart';
import 'package:flutter_application_1/screens/form_screen.dart';
import 'package:flutter_application_1/screens/formscreen.dart';

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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(children: [FormScreen(), DisplayScreen()]),
          bottomNavigationBar: TabBar(tabs: [
            Tab(
              text: 'บันทึกอุณหภูมิ',
            ),
            Tab(
              text: 'รายชื่อนักเรียน',
            )
          ]),
          backgroundColor: Colors.blue,
        ));
  }
}
