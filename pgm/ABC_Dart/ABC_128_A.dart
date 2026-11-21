// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int P] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int two = 2;
  const int three = 3;
  print((A * three + P) ~/ two);
  exit(0);
}
