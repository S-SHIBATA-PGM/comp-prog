// import 'dart:collection';
import 'dart:io';
import 'dart:math';

void main() {
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int two = 2;
  print(pow(A + B, two).toInt());
  exit(0);
}
