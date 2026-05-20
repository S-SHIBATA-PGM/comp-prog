// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const int zero = 0;
  const int one = 1;
  final List<String> S = List.generate(N, (_) => '');
  final Int32List A = Int32List(N);
  for (int i = zero; i < N; i++) {
    final List<String> arr = stdin.readLineSync()!.split(' ').toList();
    S[i] = arr[zero];
    A[i] = int.parse(arr[one]);
  }
  int idx = zero;
  int mn = A[idx];
  for (int i = one; i < N; i++) {
    if (A[i] < mn) {
      idx = i;
      mn = A[i];
    }
  }
  for (int i = zero; i < N; i++) {
    print(S[(i + idx) % N]);
  }
  exit(0);
}
