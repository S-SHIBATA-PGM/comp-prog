// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  final String T = stdin.readLineSync()!;
  const int zero = 0;
  final int len = S.length;
  int cnt = zero;
  for (int i = zero; i < len; i++) {
    if (S[i] == T[i]) {
      cnt++;
    }
  }
  print(cnt);
  exit(0);
}
