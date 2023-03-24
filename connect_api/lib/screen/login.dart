import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ลงชื่อเข้าใช้")),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('อีเมล', style: TextStyle(fontSize: 20)),
                  TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: "กรุณาป้อนอีเมล"),
                      EmailValidator(errorText: "รูปแบบอีเมลไม่ถูกต้อง")
                    ]),
                    keyboardType: TextInputType.emailAddress,
                    controller: email,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('รหัสผ่าน', style: TextStyle(fontSize: 20)),
                  TextFormField(
                    obscureText: true,
                    validator:
                        RequiredValidator(errorText: 'กรุณาป้อนรหัสผ่าน'),
                    controller: password,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            await loginAPI(email.text, password.text);
                          }
                        },
                        icon: Icon(Icons.login),
                        label: Text(
                          'ลงชื่อเข้าใช้',
                          style: TextStyle(fontSize: 20),
                        )),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

Future<http.Response> loginAPI(String? email, String? password) async {
  var url = "";
  var body = {'email': email, 'password': password};

  var response = await http.post(Uri.parse(url),
      headers: {"Content-Type": "application/json"}, body: json.encode(body));
}
