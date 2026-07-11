// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B, int C, int X] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int twelve = 12;
  const double dOne = 1.0;
  const double dZero = 0.0;
  final double prob;
  if (X <= A) {
    prob = dOne;
  } else if (X <= B) {
    prob = C / (B - A);
  } else {
    prob = dZero;
  }
  print(prob.toStringAsFixed(twelve));
  exit(0);
}
