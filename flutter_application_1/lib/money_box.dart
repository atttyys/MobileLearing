import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MonkeyBox extends StatelessWidget {
  String title;
  double amount;
  Color boxcolors;
  double size;

  MonkeyBox(this.title, this.amount, this.boxcolors, this.size);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: boxcolors,
          borderRadius: BorderRadius.circular(30),
        ),
        height: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style:const TextStyle(
                  fontSize: 26,
                  color: Colors.lightGreenAccent,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            Expanded(
                child: Text(
              '${NumberFormat("#,###.##").format(amount)}',
              style:const TextStyle(
                  fontSize: 26,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ))
          ],
        ),
      ),
    );
  }
}
