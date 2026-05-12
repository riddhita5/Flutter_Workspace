import 'package:intl/intl.dart';

void main() {
  DateTime now = DateTime.now();

  String formatted = DateFormat('dd/MM/yyyy').format(now);

  print(formatted);
}