// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String blank = '';
  const String pattern = r'\|.*\|';
  print(S.replaceFirst(RegExp(pattern), blank));
  exit(0);
}
