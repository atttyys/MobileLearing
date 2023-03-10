import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/profile.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';


class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = new Profile();
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError)
            return Scaffold(
              appBar: AppBar(title: Text('Error')),
              body: Center(child: Text('${snapshot.error}')),
            );
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
                appBar: AppBar(title: Text('สร้างบัญชีผู้ใช้')),
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
                                RequiredValidator(errorText: 'กรุณาป้อนอีเมล'),
                                EmailValidator(
                                    errorText: 'รูปแบบอีเมลไม่ถูกต้อง')
                              ]),
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (email) {
                                profile.email = email;
                              },
                            ),
                            SizedBox(height: 15),
                            Text('รหัสผ่าน', style: TextStyle(fontSize: 20)),
                            TextFormField(
                                obscureText: true,
                                validator: RequiredValidator(
                                    errorText: 'กรุณาป้อนรหัสผ่าน'),
                                onSaved: (password) {
                                  profile.password = password;
                                }),
                            SizedBox(
                                width: double.infinity,
                                child: ElevatedButton.icon(
                                    onPressed: () async {
                                      if (formKey.currentState!.validate()) {
                                        formKey.currentState!.save();
                                        try {
                                          await FirebaseAuth.instance
                                              .createUserWithEmailAndPassword(
                                                  email:
                                                      profile.email.toString(),
                                                  password: profile.password
                                                      .toString())
                                              .then((value) {
                                            formKey.currentState!.reset();
                                            Fluttertoast.showToast(
                                                msg: 'สร้างบัญชีเรียบร้อย');
                                            Navigator.pushReplacement(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return HomeScreen();
                                            }));
                                          });
                                        } on FirebaseAuthException catch (e) {
                                          String message;
                                          if (e.code == 'email-already-in-use')
                                            message =
                                                'อีเมลซ้ำไม่สามารถใช้งานได้';
                                          else if (e.code == 'weak-password')
                                            message =
                                                'รหัสผ่านต้องมีความยาว 6 ตัวอักษรขึ้นไป';
                                          else
                                            message = e.message.toString();

                                          Fluttertoast.showToast(msg: message);
                                        }
                                      }
                                    },
                                    icon: Icon(Icons.app_registration_rounded),
                                    label: Text(
                                      'ลงทะเบียน',
                                      style: TextStyle(fontSize: 20),
                                    )))
                          ],
                        ),
                      )),
                ));
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
