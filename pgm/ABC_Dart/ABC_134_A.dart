// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int r = int.parse(stdin.readLineSync()!);
  const double dTwo = 2.0;
  const int three = 3;
  print(three * pow(r.toDouble(), dTwo).toInt());
  exit(0);
}
