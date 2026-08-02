// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int X = int.parse(stdin.readLineSync()!);
  const String Yes = "Yes";
  const String No = "No";
  const int divisor = 100;
  const int zero = 0;
  print(X != zero && X % divisor == zero ? Yes : No);
  exit(0);
}
