import 'package:intl/intl.dart';

String formatDate(String dateStr, String formatPattern) {
  DateTime date = DateTime.parse(dateStr);
  String formattedDate = DateFormat(formatPattern).format(date);
  return formattedDate;
}
// eg : String formattedDateBerangkat = formatDate(tanggal, "yyyy-MM-dd'T'HH:mm:ss");
