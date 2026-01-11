// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  final String space = ' ';
  final int zero = 0;
  List<int> A = List<int>.empty(growable: true);
  List<int> B = List<int>.empty(growable: true);
  for (int i = zero; i < N; i++) {
    final [int a, int b] = stdin
        .readLineSync()!
        .split(space)
        .map(int.parse)
        .toList();
    A.add(a);
    B.add(b);
  }
  print(Iterable<int>.generate(N).where((i) => B[i] > A[i]).length);
  exit(0);
}
