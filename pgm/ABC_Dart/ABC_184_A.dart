// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int a, int b] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final [int c, int d] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  print(a * d - b * c);
  exit(0);
}
