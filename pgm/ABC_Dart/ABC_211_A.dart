// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [double A, double B] = stdin
      .readLineSync()!
      .split(' ')
      .map(double.parse)
      .toList();
  const int digit = 7;
  const int three = 3;
  const int ten = 10;
  final double C = (A - B) / three + B;
  final num factor = pow(ten, digit);
  print(((C * factor).truncateToDouble() / factor).toStringAsFixed(digit));
  exit(0);
}
