// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int N, int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  print(min(N * A, B));
  exit(0);
}
