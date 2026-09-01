// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int unity = 1;
  const int hundredPercent = 100;
  print((unity - B / A) * hundredPercent);
  exit(0);
}
