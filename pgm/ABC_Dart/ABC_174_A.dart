// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int X = int.parse(stdin.readLineSync()!);
  const String Yes = 'Yes';
  const String No = 'No';
  const int thirty = 30;
  print(X >= thirty ? Yes : No);
  exit(0);
}
