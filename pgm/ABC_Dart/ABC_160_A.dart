// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String Yes = 'Yes';
  const String No = 'No';
  const int two = 2;
  const int three = 3;
  const int four = 4;
  const int five = 5;
  print(S[two] == S[three] && S[four] == S[five] ? Yes : No);
  exit(0);
}
