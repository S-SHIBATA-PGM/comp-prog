// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int A = int.parse(stdin.readLineSync()!);
  final int B = int.parse(stdin.readLineSync()!);
  const int one = 1;
  const int two = 2;
  const int three = 3;
  print({one, two, three}.difference({A, B}).first);
  exit(0);
}
