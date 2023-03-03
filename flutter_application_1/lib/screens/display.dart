import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('รายงานการวัดอุณหภูมิ')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('student').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView(
              children: snapshot.data!.docs.map((document) {
            return Container(
                child: ListTile(
              leading: CircleAvatar(
                  radius: 30, child: FittedBox(child: Text(document['temp']))),
              title: Text(document['fname'] + '' + document['lname']),
              subtitle: Text(document['email']),
            ));
          }).toList());
        },
      ),
    );
  }
}
