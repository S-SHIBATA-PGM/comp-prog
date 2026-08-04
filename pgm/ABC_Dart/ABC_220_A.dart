// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B, int C] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int one = 1;
  const int zero = 0;
  final int multiple = A + C - A % C;
  print(
    A % C == zero
        ? A
        : multiple <= B
        ? multiple
        : -one,
  );
  exit(0);
}
