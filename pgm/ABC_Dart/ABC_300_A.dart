// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final [int N, int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final Int32List C = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int one = 1;
  const int zero = 0;
  final int target = A + B;
  for (int i = zero; i < N; i++) {
    if (C[i] == target) {
      print(i + one);
      break;
    }
  }
  exit(0);
}
