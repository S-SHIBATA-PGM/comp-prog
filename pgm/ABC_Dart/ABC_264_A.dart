// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int L, int R] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String atcoder = "atcoder";
  const int one = 1;
  print(atcoder.substring(L - one, R));
  exit(0);
}
