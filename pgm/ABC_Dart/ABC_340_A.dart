//  'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B, int D] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String space = ' ';
  const int one = 1;
  print(
    Iterable.generate(((B - A) ~/ D) + one, (int i) => A + D * i).join(space),
  );
  exit(0);
}
