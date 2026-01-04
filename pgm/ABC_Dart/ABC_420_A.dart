// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int X, int Y] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  print(DateTime(DateTime.now().year, X + Y).month);
  exit(0);
}
