// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [double A, double B] = stdin
      .readLineSync()!
      .split(' ')
      .map(double.parse)
      .toList();
  print((A / B).round());
  exit(0);
}
