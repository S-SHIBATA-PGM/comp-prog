// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const String White = "White";
  const String Black = "Black";
  const int two = 2;
  const int zero = 0;
  print(N % two == zero ? White : Black);
  exit(0);
}
