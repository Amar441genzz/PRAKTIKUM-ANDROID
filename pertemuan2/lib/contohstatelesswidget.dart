import 'package:flutter/material.dart';

class ContohStatelessWidget extends StatelessWidget {
  final TextEditingController _controllerPesan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(28.0),
        child: Column(
          children: [
            TextField(
              controller: _controllerPesan,
              decoration: InputDecoration(
                labelText: 'Masukkan Pesan Anda:',
              ),
            ),
            SizedBox(height: 20), // Tambahkan jarak agar lebih rapi
            ValueListenableBuilder<TextEditingValue>(
              valueListenable: _controllerPesan,
              builder: (context, value, child) {
                return Text('Pesan: ${value.text}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
