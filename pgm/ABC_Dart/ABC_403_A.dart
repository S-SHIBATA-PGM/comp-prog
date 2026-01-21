// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  final List<int> A = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  final int two = 2;
  final int zero = 0;
  int sum = zero;
  for (int i = zero; i < N; i += two) {
    sum += A[i];
  }
  print(sum);
  exit(0);
}
