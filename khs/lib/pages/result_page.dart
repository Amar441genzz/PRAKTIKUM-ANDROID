import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double averageScore;
  final String category;
  final int totalSks; // Adding totalSks as a parameter

  const ResultPage({
    Key? key,
    required this.averageScore,
    required this.category,
    required this.totalSks, // Initializing totalSks
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil Hitungan')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('IPK anda: ${averageScore.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 16),
              Text('Kategori: $category', style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 16),
              Text('Total SKS: $totalSks', // Displaying total SKS
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
