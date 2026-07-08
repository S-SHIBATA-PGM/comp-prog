// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B, int C, int D] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Takahashi = 'Takahashi';
  const String Aoki = 'Aoki';
  if (A < C) {
    print(Takahashi);
  } else if (A > C) {
    print(Aoki);
  } else if (B <= D) {
    print(Takahashi);
  } else {
    print(Aoki);
  }
  exit(0);
}
