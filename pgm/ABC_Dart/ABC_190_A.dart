// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B, int C] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Takahashi = 'Takahashi';
  const String Aoki = 'Aoki';
  const int zero = 0;
  print(C == zero ? (A <= B ? Aoki : Takahashi) : (B <= A ? Takahashi : Aoki));
  exit(0);
}
