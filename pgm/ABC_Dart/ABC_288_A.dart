// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  const String space = " ";
  const int zero = 0;
  final int N = int.parse(stdin.readLineSync()!);
  for (int i = zero; i < N; i++) {
    final [int A, int B] = stdin
        .readLineSync()!
        .split(space)
        .map(int.parse)
        .toList();
    print(A + B);
  }
  exit(0);
}
