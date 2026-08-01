// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String er = "er";
  const String ist = "ist";
  print(S.endsWith(er) ? er : ist);
  exit(0);
}
