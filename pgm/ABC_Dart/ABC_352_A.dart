// import 'dart:collection';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int _, int X, int Y, int Z] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = 'Yes';
  const String No = 'No';
  print(min(X, Y) < Z && Z < max(X, Y) ? Yes : No);
  exit(0);
}
