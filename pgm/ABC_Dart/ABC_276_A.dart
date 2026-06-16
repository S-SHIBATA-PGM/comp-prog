// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String a = "a";
  const int one = 1;
  final int idx = S.lastIndexOf(a);
  print(idx == -one ? -one : idx + one);
  exit(0);
}
