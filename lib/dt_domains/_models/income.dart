class Income {
  final double grossIncome; // Penghasilan kotor
  final double deductions;  // Pengurangan

  Income({required this.grossIncome, required this.deductions});

  double get netIncome => grossIncome - deductions;
}
