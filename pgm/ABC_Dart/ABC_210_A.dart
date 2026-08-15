// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int N, int A, int X, int Y] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int zero = 0;
  print(X * min(N, A) + Y * max(zero, N - A));
  exit(0);
}
