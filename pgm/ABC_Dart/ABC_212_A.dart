// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Gold = 'Gold';
  const String Silver = 'Silver';
  const String Alloy = 'Alloy';
  const int zero = 0;
  print(
    A > zero && B > zero
        ? Alloy
        : A == zero
        ? Silver
        : Gold,
  );
  exit(0);
}
