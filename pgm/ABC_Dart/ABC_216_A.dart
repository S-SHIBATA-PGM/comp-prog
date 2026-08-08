// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  const String minus = '-';
  const String dot = '.';
  const String plus = '+';
  const String blank = '';
  const int two = 2;
  const int six = 6;
  final [int X, int Y] = stdin
      .readLineSync()!
      .split(dot)
      .map(int.parse)
      .toList();
  final String sign = switch (Y) {
    <= two => minus,
    <= six => blank,
    _ => plus,
  };
  print("$X$sign");
  exit(0);
}
