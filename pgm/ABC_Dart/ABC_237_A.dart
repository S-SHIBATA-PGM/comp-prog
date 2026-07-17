// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  double N = double.parse(stdin.readLineSync()!);
  const String Yes = "Yes";
  const String No = "No";
  const double dTwo = 2.0;
  const double dThirtyOne = 31.0;
  final double num = pow(dTwo, dThirtyOne).toDouble();
  print(-num <= N && N < num ? Yes : No);
  exit(0);
}
