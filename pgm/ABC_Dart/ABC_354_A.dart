// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int H = int.parse(stdin.readLineSync()!);
  const int one = 1;
  const int base = 2;
  int day = one;
  int e = one;
  int value = one;
  while (value <= H) {
    e *= base;
    value += e;
    day += one;
  }
  print(day);
  exit(0);
}
