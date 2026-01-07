// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int N, int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final String S = stdin.readLineSync()!;
  print(S.substring(A, N - B));
  exit(0);
}
