import 'dart:io';
import 'dart:math';

void main() {
  final [int S, int A, int B, int X] = stdin
      .readLineSync()!
      .split(" ")
      .map(int.parse)
      .toList();
  print(S * A * (X ~/ (A + B)) + S * min(A, X % (A + B)));
  exit(0);
}
