import 'package:flutter/material.dart';

class Baris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('belajar baris kolom'),
        ),
        body: Container(
            color: Colors.red[400],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'flutter 01',
                  style: TextStyle(fontSize: 30, color: Colors.yellow[300]),
                ),
                Text(
                  'flutter 02',
                  style: TextStyle(fontSize: 30, color: Colors.yellow[300]),
                ),
                Text(
                  'flutter 03',
                  style: TextStyle(fontSize: 30, color: Colors.yellow[300]),
                ),
              ],
            )));
  }
}
