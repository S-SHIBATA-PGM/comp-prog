// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int L1, int R1, int L2, int R2] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int zero = 0;
  print(max(zero, min(R1, R2) - max(L1, L2)));
  exit(0);
}
