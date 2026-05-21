// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  final String S = stdin.readLineSync()!;
  final String T = stdin.readLineSync()!;
  const String Yes = "Yes";
  const String No = "No";
  const String sOne = '1';
  const String sL = 'l';
  const String sZero = '0';
  const String sO = 'o';
  const int zero = 0;
  bool isMatch = true;
  for (int i = zero; i < N; i++) {
    final String s = S[i];
    final String t = T[i];
    if (s != t) {
      if (!((s == sOne && t == sL) || (s == sL && t == sOne)) &&
          !((s == sZero && t == sO) || (s == sO && t == sZero))) {
        isMatch = false;
        break;
      }
    }
  }
  print(isMatch ? Yes : No);
  exit(0);
}
