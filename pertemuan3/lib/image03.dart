import 'package:flutter/material.dart';

class Image03 extends StatelessWidget {
  const Image03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menampilkan Gambar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildImageCard('assets/gambar1.jpeg', Colors.red),
            buildImageCard('assets/gambar2.jpeg', Colors.green),
            buildImageCard('assets/gambar3.jpeg', Colors.blue),
            buildImageCard('assets/gambar4.jpeg', Colors.yellow),
            buildImageCard('assets/gambar5.jpeg', Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget buildImageCard(String imagePath, Color color) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          height: 150.0,
          width: double.infinity,
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Text(
                'Gambar tidak ditemukan!',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            );
          },
        ),
      ),
    );
  }
}
