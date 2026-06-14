// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String v = 'v';
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  final int iV = v.codeUnitAt(zero);
  int cnt = zero;
  for (final int i in S.codeUnits) {
    if (i == iV) {
      cnt += one;
    } else {
      cnt += two;
    }
  }
  print(cnt);
  exit(0);
}
