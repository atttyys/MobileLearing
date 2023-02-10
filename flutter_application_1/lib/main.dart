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
      home: const MyHomePage(title: 'Neon Button Chontis'),
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
  bool isLoading = false;
  @override
  Widget build(BuildContext context) => isLoading
      ? const LoadingPage()
      : Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true; //แสดง loading
                      });
                      await Future.delayed(Duration(seconds: 3)); //รอ3วิ
                      setState(() {
                        isLoading = false; //ซ่อน loading
                      });
                    },
                    child: Text('Loading..')),
                NeonButton(Colors.red),
                NeonButton(Colors.greenAccent.shade700),
                NeonButton(Colors.blue),
                NeonButton(Colors.yellowAccent.shade700),
                NeonButton(Colors.blueAccent.shade700),
                NeonButton(Colors.white),
                // SpinKitCircle(
                //   size: 140,
                //   itemBuilder: ((context, index) {
                //     final colors = [Colors.green, Colors.red, Colors.yellow];
                //     final color = colors[index % colors.length];
                //     return DecoratedBox(
                //         decoration:
                //             BoxDecoration(color: color, shape: BoxShape.circle));
                //   }),
                // ),
              ],
            ),
          ),
        );
}

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitCircle(
        size: 140,
        itemBuilder: ((context, index) {
          final colors = [Colors.green, Colors.red, Colors.yellow];
          final color = colors[index % colors.length];
          return DecoratedBox(
              decoration: BoxDecoration(color: color, shape: BoxShape.circle));
        }),
      ),
    );
  }
}
