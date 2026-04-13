// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const int only = 1;
  const int one = 1;
  const int zero = 0;
  final Map<String, int> map = {};
  for (int i = zero; i < S.length; i++) {
    map[S[i]] = (map[S[i]] ?? zero) + one;
  }
  for (final String k in map.keys) {
    if (map[k] == only) {
      print(S.indexOf(k) + one);
      break;
    }
  }
  exit(0);
}
