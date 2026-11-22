// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int two = 2;
  const int five = 5;
  const int twelve = 12;
  const int zero = 0;
  print(A <= five ? zero : (A <= twelve ? B ~/ two : B));
  exit(0);
}
