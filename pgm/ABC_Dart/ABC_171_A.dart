// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String alpha = stdin.readLineSync()!;
  const String upperA = 'A';
  const String lowerA = 'a';
  print(alpha == alpha.toUpperCase() ? upperA : lowerA);
  exit(0);
}
