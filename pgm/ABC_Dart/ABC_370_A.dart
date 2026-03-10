// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int L, int R] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = 'Yes';
  const String No = 'No';
  const String Invalid = 'Invalid';
  const int one = 1;
  const int zero = 0;
  if (L == one && R == zero) {
    print(Yes);
  } else if (L == zero && R == one) {
    print(No);
  } else {
    print(Invalid);
  }
  exit(0);
}
