// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const int one = 1;
  const int hundred = 100;
  print((N + hundred - one) ~/ hundred);
  exit(0);
}
