// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  stdin.readLineSync()!;
  final String S = stdin.readLineSync()!;
  final String T = stdin.readLineSync()!;
  print(Iterable<int>.generate(S.length).where((i) => S[i] != T[i]).length);
}
