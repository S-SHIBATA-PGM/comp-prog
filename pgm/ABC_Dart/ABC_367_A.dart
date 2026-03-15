// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B, int C] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = "Yes";
  const String No = "No";
  if (B < C && (A < B || C < A)) {
    print(Yes);
  } else if (C < A && A < B) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
