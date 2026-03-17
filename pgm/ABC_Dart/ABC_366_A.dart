// import 'dart:collection';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int N, int T, int A] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = "Yes";
  const String No = "No";
  const int two = 2;
  if (max(T, A) > N ~/ two) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
