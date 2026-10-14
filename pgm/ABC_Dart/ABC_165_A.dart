// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int K = int.parse(stdin.readLineSync()!);
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String OK = 'OK';
  const String NG = 'NG';
  if (A <= (B ~/ K) * K) {
    print(OK);
  } else {
    print(NG);
  }
  exit(0);
}
