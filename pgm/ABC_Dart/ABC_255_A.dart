// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  const String space = ' ';
  const int one = 1;
  final [int R, int C] = stdin
      .readLineSync()!
      .split(space)
      .map(int.parse)
      .toList();
  final List<List<int>> A = [
    stdin.readLineSync()!.split(space).map(int.parse).toList(),
    stdin.readLineSync()!.split(space).map(int.parse).toList(),
  ];
  print(A[R - one][C - one]);
  exit(0);
}
