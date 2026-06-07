// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final [int _, int P, int Q, int R, int _] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String space = " ";
  const int one = 1;
  const int zero = 0;
  final int len = Q - P + one;
  final int pIdx = P - one;
  final int rIdx = R - one;
  for (int i = zero; i < len; i++) {
    int keep = A[pIdx + i];
    A[pIdx + i] = A[rIdx + i];
    A[rIdx + i] = keep;
  }
  print(A.join(space));
  exit(0);
}
