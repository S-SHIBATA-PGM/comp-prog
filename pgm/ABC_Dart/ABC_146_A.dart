// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String E = 'E';
  const int one = 1;
  final DateTime now = DateTime.now();
  final DateTime baseMonday = DateTime(
    now.year,
    now.month,
    now.day,
  ).subtract(Duration(days: now.weekday - DateTime.monday));
  final List<String> days = List.generate(DateTime.daysPerWeek, (i) {
    final DateTime targetDate = baseMonday.add(Duration(days: i));
    return DateFormat(E).format(targetDate).toUpperCase();
  });
  final List<String> shiftDay = [days.last, ...days.take(days.length - one)];
  final int index = shiftDay.indexOf(S);
  print(shiftDay.length - index);
  exit(0);
}
