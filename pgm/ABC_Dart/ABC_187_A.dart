// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [String a, String b] = stdin.readLineSync()!.split(' ');
  const String blank = '';
  const int zero = 0;
  int digitSum(String s) =>
      s.split(blank).map(int.parse).fold(zero, (pre, cur) => pre + cur);
  print(max(digitSum(a), digitSum(b)));
  exit(0);
}
