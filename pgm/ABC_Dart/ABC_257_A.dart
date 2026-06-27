// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int N, int X] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String A = "A";
  const int one = 1;
  const int zero = 0;
  print(String.fromCharCode(A.codeUnitAt(zero) + (X - one) ~/ N));
  exit(0);
}
