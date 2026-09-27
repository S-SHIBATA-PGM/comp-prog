// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String s = 's';
  const String es = 'es';
  print(S.endsWith(s) ? '$S$es' : '$S$s');
  exit(0);
}
