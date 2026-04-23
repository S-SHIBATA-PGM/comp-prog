//  'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final [int N, int S, int K] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String space = ' ';
  const int one = 1;
  const int zero = 0;
  final Int32List P = Int32List(N);
  final Int32List Q = Int32List(N);
  for (int i = zero; i < N; i++) {
    final List<int> arr = stdin
        .readLineSync()!
        .split(space)
        .map(int.parse)
        .toList();
    P[i] = arr[zero];
    Q[i] = arr[one];
  }
  int price = zero;
  for (int i = zero; i < N; i++) {
    price += P[i] * Q[i];
  }
  if (price < S) {
    print(price + K);
  } else {
    print(price);
  }
  exit(0);
}
