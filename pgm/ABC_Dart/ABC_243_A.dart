// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int V, int A, int B, int C] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String T = "T";
  const String F = "F";
  const String M = "M";
  const String space = " ";
  const int zero = 0;
  int v = V;
  String turn = T;
  while (v >= zero) {
    if (turn == T) {
      v -= A;
      turn = F;
    } else if (turn == F) {
      v -= B;
      turn = M;
    } else {
      v -= C;
      turn = T;
    }
  }
  print(turn);
  exit(0);
}
