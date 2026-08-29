// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int _, int b] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final [int c, int _] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  print(b - c);
  exit(0);
}
