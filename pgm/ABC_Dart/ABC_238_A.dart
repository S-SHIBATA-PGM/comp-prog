// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  double n = double.parse(stdin.readLineSync()!);
  const String Yes = 'Yes';
  const String No = 'No';
  const double dTwo = 2.0;
  final double left = pow(dTwo, n).toDouble();
  final double right = pow(n, dTwo).toDouble();
  print(left > right ? Yes : No);
  exit(0);
}
