// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

const String space = ' ';
const int one = 1;

void main() {
  final [int N, int L, int R] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final Int32List A = Int32List.fromList(List.generate(N, (int i) => i + one));
  reverseArray(A, L - one, R);
  print(A.join(space));
  exit(0);
}

void reverseArray(Int32List arr, int start, int end) {
  int i = start;
  int j = end - one;
  while (i < j) {
    final keep = arr[i];
    arr[i] = arr[j];
    arr[j] = keep;
    i++;
    j--;
  }
}
