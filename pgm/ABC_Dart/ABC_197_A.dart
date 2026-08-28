// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const int one = 1;
  const int zero = 0;
  print(S.substring(one) + S.substring(zero, one));
  exit(0);
}
