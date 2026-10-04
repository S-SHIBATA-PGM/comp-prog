// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int a = int.parse(stdin.readLineSync()!);
  const int two = 2;
  const int three = 3;
  print(a + pow(a, two) + pow(a, three));
  exit(0);
}
