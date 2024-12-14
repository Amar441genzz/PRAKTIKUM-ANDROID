import 'package:flutter/material.dart';
import '../utils/converter.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final List<String> grades = ['A', 'B+', 'B', 'C+', 'C', 'D', 'E'];
  final List<int> sks = [2, 2, 2, 2, 3, 2, 2, 2, 3, 3];
  final List<String?> courses = [
    'Statistik dan Probabilitas',
    'Interaksi Manusia dan Komputer',
    'Teknologi Multimedia',
    'Kecerdasan Buatan',
    'E-Commerce',
    'Pemrograman Visual 3',
    'Teknik Kompilasi',
    'Pemrograman Berbasis Objek 2',
    'Rekayasa Perangkat Lunak',
    'Analisis dan Desain Sistem Informasi'
  ];
  final List<String?> selectedGrades = List<String?>.filled(10, null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hitung IPK dan SKS')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            '${courses[index]} (${sks[index]} SKS):',
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                        DropdownButton<String>(
                          value: selectedGrades[index],
                          hint: const Text('Pilih Nilai'),
                          items: grades
                              .map((grade) => DropdownMenuItem(
                                    value: grade,
                                    child: Text(grade),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedGrades[index] = value;
                            });
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (selectedGrades.contains(null)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content:
                          Text('Mohon pilih nilai untuk semua mata kuliah.'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                  return;
                }

                final totalScore = selectedGrades.asMap().entries.fold<double>(
                  0,
                  (sum, entry) {
                    final grade = entry.value;
                    final weight = sks[entry.key];
                    return sum + Converter().convertGradeToSks(grade!) * weight;
                  },
                );

                final totalSks =
                    sks.fold<int>(0, (sum, weight) => sum + weight);
                final average = totalScore / totalSks;
                final category = Converter().convertToCategory(average);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      averageScore: average,
                      category: category, // Pass category to result page
                      totalSks: totalSks, // Pass totalSks to result page
                    ),
                  ),
                );
              },
              child: const Text('Hitung'),
            ),
          ],
        ),
      ),
    );
  }
}
