String formatDoubleToPercent({required double value}) {
  // Convert double value to percentage by multiplying by 100
  // and format it with two decimal places
  String formattedPercent = (value * 100).toStringAsFixed(2);

  // Add '%' symbol at the end
  return '$formattedPercent%';
}
