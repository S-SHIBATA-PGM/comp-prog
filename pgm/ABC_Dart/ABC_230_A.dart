// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const String AGC = "AGC";
  const int one = 1;
  const int three = 3;
  const int fortyTwo = 42;
  const int zero = 0;
  int num = N >= fortyTwo ? N + one : N;
  print("$AGC${num.toString().padLeft(three, zero.toString())}");
  exit(0);
}
