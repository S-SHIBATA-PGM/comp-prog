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
  print(
    L == one && R == zero
        ? Yes
        : L == zero && R == one
        ? No
        : Invalid,
  );
  exit(0);
}
