class Converter {
  String convertToCategory(double score) {
    // Menentukan kategori berdasarkan nilai rata-rata
    if (score >= 3.0) {
      return 'Memuaskan'; // Jika nilai rata-rata >= 3, maka Memuaskan
    } else {
      return 'Tidak Memuaskan'; // Jika nilai rata-rata < 3, maka Tidak Memuaskan
    }
  }

  double convertGradeToSks(String grade) {
    switch (grade) {
      case 'E':
        return 0;
      case 'D':
        return 1;
      case 'C':
        return 1.5;
      case 'C+':
        return 2;
      case 'B':
        return 3;
      case 'B+':
        return 3.5;
      case 'A':
        return 4;
      default:
        return 0;
    }
  }
}
