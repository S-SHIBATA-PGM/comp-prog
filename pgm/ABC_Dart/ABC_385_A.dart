// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final ABC = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  const String Yes = 'Yes';
  const String No = 'No';
  ABC.sort();
  final [A, B, C] = ABC;
  if (A == B && B == C) {
    print(Yes);
  } else if (A + B == C) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
