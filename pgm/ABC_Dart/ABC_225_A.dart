// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

extension FactorialExtension on int {
  int factorial() {
    int ret = 1;
    for (int i = 1; i <= this; i++) {
      ret *= i;
    }
    return ret;
  }
}

void main() {
  final String S = stdin.readLineSync()!;
  const int one = 1;
  const int zero = 0;
  final int len = S.length;
  final Map<String, int> map = {};
  for (int i = zero; i < len; i++) {
    final String str = S[i];
    map[str] = (map[str] ?? zero) + one;
  }
  int divisor = one;
  for (final int cnt in map.values) {
    divisor *= cnt.factorial();
  }
  print(len.factorial() ~/ divisor);
  exit(0);
}
