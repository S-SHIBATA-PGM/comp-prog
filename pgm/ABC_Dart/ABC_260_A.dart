// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const int one = 1;
  const int zero = 0;
  final Map<String, int> map = {};
  for (int i = zero; i < S.length; i++) {
    final String s = S[i];
    map[s] = (map[s] ?? zero) + one;
  }
  bool uniqueFlg = false;
  for (final MapEntry<String, int> ent in map.entries) {
    if (uniqueFlg) break;
    if (ent.value == one) {
      uniqueFlg = true;
      print(ent.key);
      break;
    }
  }
  if (!uniqueFlg) print(-one);
  exit(0);
}
