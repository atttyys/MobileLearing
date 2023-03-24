import 'package:connect_api/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                    icon: Icon(Icons.login),
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    label: Text(
                      "เข้าสู่ระบบ",
                      style: TextStyle(fontSize: 20),
                    ))),
            SizedBox(height: 10),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RegisterScreen();
                      }));
                    },
                    icon: Icon(Icons.app_registration_outlined),
                    style: ElevatedButton.styleFrom(primary: Colors.orange),
                    label: Text(
                      "สร้างบัญชีใหม่",
                      style: TextStyle(fontSize: 20),
                    )))
          ]),
        ),
      ),
    );
  }
}
