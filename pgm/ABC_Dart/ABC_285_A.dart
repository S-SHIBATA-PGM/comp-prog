// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int a, int b] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = "Yes";
  const String No = "No";
  const int one = 1;
  const int two = 2;
  if (a * two == b || a * two + one == b) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
