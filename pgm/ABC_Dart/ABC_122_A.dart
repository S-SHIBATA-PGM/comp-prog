// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String b = stdin.readLineSync()!;
  const String A = 'A';
  const String T = 'T';
  const String G = 'G';
  const String C = 'C';
  const Map<String, String> pairs = {A: T, T: A, G: C, C: G};
  print(pairs[b]);
  exit(0);
}
