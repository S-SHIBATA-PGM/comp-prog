// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int N, int L, int R] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final int zero = 0;
  int cnt = zero;
  for (int i = zero; i < N; i++) {
    final [int X, int Y] = stdin
        .readLineSync()!
        .split(' ')
        .map(int.parse)
        .toList();
    if (X <= L && R <= Y) {
      cnt++;
    }
  }
  print(cnt);
  exit(0);
}
