// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int X, int A] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int ten = 10;
  const int zero = 0;
  print(X < A ? zero : ten);
  exit(0);
}
