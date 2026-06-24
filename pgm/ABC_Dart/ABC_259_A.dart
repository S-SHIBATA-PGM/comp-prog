// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int N, int M, int X, int T, int D] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int zero = 0;
  print(T + min(zero, (M - X) * D));
  exit(0);
}
