// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String Yes = 'Yes';
  const String No = 'No';
  const int zero = 0;
  print(S.codeUnits.every((s) => s == S.codeUnitAt(zero)) ? No : Yes);
  exit(0);
}
