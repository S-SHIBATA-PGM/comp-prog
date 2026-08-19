// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [double A, double B] = stdin
      .readLineSync()!
      .split(' ')
      .map(double.parse)
      .toList();
  const double divisor = 100.0;
  print(A * B / divisor);
  exit(0);
}
