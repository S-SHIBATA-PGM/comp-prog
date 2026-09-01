// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int X = int.parse(stdin.readLineSync()!);
  const int hundred = 100;
  print(hundred - X % hundred);
  exit(0);
}
