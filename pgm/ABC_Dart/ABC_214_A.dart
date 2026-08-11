import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const int one = 1;
  const int four = 4;
  const int six = 6;
  const int eight = 8;
  const int oneHundredTwentySix = 126;
  const int twoHundredTwelve = 212;
  final SplayTreeMap<int, int> m = SplayTreeMap();
  m[one] = four;
  m[oneHundredTwentySix] = six;
  m[twoHundredTwelve] = eight;
  print(m[m.lastKeyBefore(N + one)]);
  exit(0);
}
