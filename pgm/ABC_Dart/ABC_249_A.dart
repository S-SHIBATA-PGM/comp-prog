// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B, int C, int D, int E, int F, int X] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Takahashi = "Takahashi";
  const String Aoki = "Aoki";
  const String Draw = "Draw";
  int takahashiDistance = B * A * (X ~/ (A + C)) + B * min(A, X % (A + C));
  int aokiDistance = E * D * (X ~/ (D + F)) + E * min(D, X % (D + F));
  if (takahashiDistance > aokiDistance) {
    print(Takahashi);
  } else if (takahashiDistance < aokiDistance) {
    print(Aoki);
  } else {
    print(Draw);
  }
  exit(0);
}
