// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int one = 1;
  print((A + B - one) ~/ B);
  exit(0);
}
