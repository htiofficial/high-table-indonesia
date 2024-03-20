import 'package:intl/intl.dart';

String formatCurrency({
  required num value,
  bool withCurrency = true,
}) {
  // Create a NumberFormat instance for Indonesian Rupiah (IDR) formatting
  NumberFormat idrFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: withCurrency ? "Rp" : "",
  );
  String formattedValue = idrFormat.format(value);
  formattedValue = formattedValue.replaceAll(",00", "");
  // Format the numeric value
  return formattedValue;
}
