// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int K = int.parse(stdin.readLineSync()!);
  const String colon = ':';
  const String sZero = '0';
  const int hh = 21;
  const int mm = 0;
  const int two = 2;
  final DateTime now = DateTime.now();
  final DateTime target = DateTime(
    now.year,
    now.month,
    now.day,
    hh,
    mm,
  ).add(Duration(minutes: K));
  print(
    '${target.hour.toString().padLeft(two, sZero)}'
    '${colon}'
    '${target.minute.toString().padLeft(two, sZero)}',
  );
  exit(0);
}
