// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int H, int A] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int one = 1;
  print((H + A - one) ~/ A);
  exit(0);
}
