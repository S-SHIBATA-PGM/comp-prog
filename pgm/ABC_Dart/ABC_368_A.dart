// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

const int one = 1;
const int zero = 0;
const String space = ' ';

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

void main() {
  final [int _, int K] = stdin
      .readLineSync()!
      .split(space)
      .map(int.parse)
      .toList();
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(space).map(int.parse).toList(),
  );
  reverseArray(A, zero, A.length);
  reverseArray(A, zero, K);
  reverseArray(A, K, A.length);
  print(A.join(space));
  exit(0);
}
