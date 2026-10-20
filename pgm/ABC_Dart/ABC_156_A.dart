// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int N, int R] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int ten = 10;
  const int hundred = 100;
  print(N >= ten ? R : R + hundred * (ten - N));
  exit(0);
}
