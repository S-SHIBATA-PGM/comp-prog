// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const String sZero = '0';
  const int two = 2;
  const int hundred = 100;
  print((N % hundred).toString().padLeft(two, sZero));
  exit(0);
}
