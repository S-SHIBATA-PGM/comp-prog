// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const int four = 4;
  const int zero = 0;
  print(N.toString().padLeft(four, zero.toString()));
  exit(0);
}
