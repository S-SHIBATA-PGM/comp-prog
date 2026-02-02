// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final List<int> A = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  A.sort();
  const String Yes = 'Yes';
  const String No = 'No';
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  if (A[zero] * A[one] == A[two]) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
