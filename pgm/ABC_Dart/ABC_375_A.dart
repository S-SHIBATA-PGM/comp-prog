// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  stdin.readLineSync()!;
  final String S = stdin.readLineSync()!;
  const String sharpDot = "#.#";
  const int zero = 0;
  int cnt = zero;
  for (int i = zero; i <= S.length - sharpDot.length; i++) {
    if (S.substring(i, i + sharpDot.length) == sharpDot) {
      cnt++;
    }
  }
  print(cnt);
  exit(0);
}
