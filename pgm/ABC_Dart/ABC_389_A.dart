// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final String S = stdin.readLineSync()!;
  const int two = 2;
  const int zero = 0;
  print(int.parse(S[zero]) * int.parse(S[two]));
  exit(0);
}
