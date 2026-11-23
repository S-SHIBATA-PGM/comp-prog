// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B, int T] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  print(T ~/ A * B);
  exit(0);
}