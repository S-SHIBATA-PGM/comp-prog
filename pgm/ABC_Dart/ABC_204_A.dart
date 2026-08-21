// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int x, int y] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int three = 3;
  print(x == y ? x : three - x - y);
  exit(0);
}
