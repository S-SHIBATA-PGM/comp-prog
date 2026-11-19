// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final Int32List pqr = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int two = 2;
  pqr.sort();
  print(pqr.take(two).reduce((a, b) => a + b));
  exit(0);
}
