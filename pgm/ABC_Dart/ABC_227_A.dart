// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int N, int K, int A] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int one = 1;
  const int zero = 0;
  print((K + A - one) % N == zero ? N : (K + A - one) % N);
  exit(0);
}
