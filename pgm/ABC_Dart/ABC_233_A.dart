// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int X, int Y] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int nine = 9;
  const int ten = 10;
  const int zero = 0;
  print(max(zero, (Y - X + nine) ~/ ten));
  exit(0);
}
