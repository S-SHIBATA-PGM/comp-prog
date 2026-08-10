// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String AC = 'AC';
  const String WA = 'WA';
  const String hello = 'Hello,World!';
  print(hello == S ? AC : WA);
  exit(0);
}
