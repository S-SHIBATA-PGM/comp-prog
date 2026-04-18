//  'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const String Takahashi = 'Takahashi';
  const String Aoki = 'Aoki';
  const String Draw = 'Draw';
  const String space = ' ';
  const int one = 1;
  const int zero = 0;
  final Int32List X = Int32List(N);
  final Int32List Y = Int32List(N);
  for (int i = zero; i < N; i++) {
    final List<int> arr = stdin
        .readLineSync()!
        .split(space)
        .map(int.parse)
        .toList();
    X[i] = arr[zero];
    Y[i] = arr[one];
  }
  if (X.fold(zero, (pre, cur) => pre + cur) >
      Y.fold(zero, (pre, cur) => pre + cur)) {
    print(Takahashi);
  } else if (Y.fold(zero, (pre, cur) => pre + cur) >
      X.fold(zero, (pre, cur) => pre + cur)) {
    print(Aoki);
  } else {
    print(Draw);
  }
  exit(0);
}
