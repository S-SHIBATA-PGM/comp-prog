//  'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int X, int Y] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = 'Yes';
  const String No = 'No';
  const int two = 2;
  const int three = 3;
  if (X < Y && Y - X <= two) {
    print(Yes);
  } else if (X > Y && X - Y <= three) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
