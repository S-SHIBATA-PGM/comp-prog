// import 'dart:collection';
import 'dart:io';
import 'dart:math';

void main() {
  const int zero = 0;
  const String space = ' ';
  final int N = int.parse(stdin.readLineSync()!);
  final List<int> T = List.filled(N, zero);
  final List<int> V = List.filled(N, zero);
  for (int i = zero; i < N; i++) {
    final [int t, int v] = stdin
        .readLineSync()!
        .split(space)
        .map(int.parse)
        .toList();
    T[i] = t;
    V[i] = v;
  }
  int time = zero;
  int water = zero;
  for (int i = zero; i < N; i++) {
    water = max(zero, water - T[i] + time);
    water += V[i];
    time = T[i];
  }
  print(water);
  exit(0);
}
