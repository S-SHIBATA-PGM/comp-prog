// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int one = 1;
  const int two = 2;
  const int three = 3;
  const int zero = 0;
  if (A == B) {
    print(one);
  } else if ((A - B).abs() % two == zero) {
    print(three);
  } else {
    print(two);
  }
  exit(0);
}
