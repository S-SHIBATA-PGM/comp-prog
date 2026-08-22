// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int a, int b, int c] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int three = 3;
  const int seven = 7;
  print(seven * three - a - b - c);
  exit(0);
}
