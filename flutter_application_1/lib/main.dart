import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello",
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Appbar',
              style: TextStyle(fontSize: 30, color: Colors.lightGreenAccent),
            ),
            backgroundColor: Colors.black87,
          ),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                Text(
                  "Chollathit Saensaradee",
                  style: TextStyle(fontSize: 32, color: Colors.black87),
                ),
                Image(
                  image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/90053668?s=96&v=4',
                  ),
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                // Text(
                //   "Caros",
                //   style: TextStyle(fontSize: 32, color: Colors.black87),
                // ),
                Image(
                  image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/85492099?v=4',
                  ),
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ])),
        ),
        theme: ThemeData(primaryColor: Colors.purple));
  }
}
