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
  const String impossible = "IMPOSSIBLE";
  const int two = 2;
  const int zero = 0;
  print((A + B) % two == zero ? (A + B) ~/ two : impossible);
  exit(0);
}
