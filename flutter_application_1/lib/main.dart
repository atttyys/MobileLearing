import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello",
        home: const MyHomePage(),
        theme: ThemeData(primaryColor: Colors.purple));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'โปรแกรมนับเลข',
          style: TextStyle(fontSize: 30, color: Colors.lightGreenAccent),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("กดปุ่มเพื่อเพิ่มจำนวนตัวเลข",
              style: TextStyle(fontSize: 32)),
          Text(number.toString(), style: const TextStyle(fontSize: 30)),
          TextButton(
            onPressed: addNumber,
            style: TextButton.styleFrom(
              fixedSize: const Size(210, 40),
              foregroundColor: Colors.lightGreenAccent,
              textStyle: const TextStyle(fontSize: 30),
              backgroundColor: Colors.black87,
            ),
            child: const Text('TextButton'),
          ),
          ElevatedButton(
            onPressed: removeNumber,
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(210, 40),
              foregroundColor: Colors.white54,
              textStyle: const TextStyle(fontSize: 30),
              backgroundColor: Colors.blueAccent,
            ),
            child: const Text('ElevatedButton'),
          ),
          OutlinedButton(
            onPressed: clearNumber,
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(210, 40),
              foregroundColor: Colors.black87,
              textStyle: const TextStyle(fontSize: 30),
              side: const BorderSide(color: Colors.pink),
            ),
            child: const Text('OutlinedButton'),
          ),
          TextField(
            decoration: new InputDecoration(labelText: 'ชื่อรายการ'),
            autofocus: true,
          ),
          TextField(
            decoration: new InputDecoration(labelText: 'ชื่อรายการ'),
            keyboardType: TextInputType.number,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        child: const Icon(Icons.add),
      ),
    );
  }

  void addNumber() {
    setState(() {
      number++;
    });
  }

  void clearNumber() {
    setState(() {
      number = 0;
    });
  }

  void removeNumber(){
    setState(() {
      number--;
    });
  }
}
