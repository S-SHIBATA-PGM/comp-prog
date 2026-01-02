import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int a, int b, int c] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int two = 2;
  const String Yes = 'Yes';
  const String No = 'No';
  final Set<int> set = Set.unmodifiable(HashSet<int>.from([a, b, c]));
  if (set.length <= two) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
