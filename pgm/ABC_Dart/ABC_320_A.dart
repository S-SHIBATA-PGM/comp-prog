// import 'dart:collection';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  print(pow(A, B) + pow(B, A));
  exit(0);
}
