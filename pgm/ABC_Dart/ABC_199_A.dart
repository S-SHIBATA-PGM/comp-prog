// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B, int C] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = 'Yes';
  const String No = 'No';
  const int two = 2;
  print(pow(A, two) + pow(B, two) < pow(C, two) ? Yes : No);
  exit(0);
}
