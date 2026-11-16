// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String yes = 'Yes';
  const String no = 'No';
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  final Map<String, int> cnt = {};
  for (int i = zero; i < S.length; i++) {
    final String c = S[i];
    cnt[c] = (cnt[c] ?? zero) + one;
  }
  print(cnt.values.every((c) => c == two) ? yes : no);
  exit(0);
}
