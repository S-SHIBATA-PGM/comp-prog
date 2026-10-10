// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  final String T = stdin.readLineSync()!;
  const String Yes = "Yes";
  const String No = "No";
  print(T.startsWith(S) ? Yes : No);
  exit(0);
}
