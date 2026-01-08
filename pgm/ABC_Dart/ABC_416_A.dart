// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [_, int L, int R] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final String S = stdin.readLineSync()!;
  final String circle = "o";
  final String Yes = "Yes";
  final String No = "No";
  final int one = 1;
  final String reg = "^$circle+\$";
  if (RegExp(reg).hasMatch(S.substring(L - one, R))) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
