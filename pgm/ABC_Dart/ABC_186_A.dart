// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int N, int W] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  print(N ~/ W);
  exit(0);
}
