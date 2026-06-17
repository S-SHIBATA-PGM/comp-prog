// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int X, int Y, int N] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int three = 3;
  if (X * three < Y) {
    print(X * N);
  } else {
    print(X * (N % three) + Y * (N ~/ three));
  }
  exit(0);
}
