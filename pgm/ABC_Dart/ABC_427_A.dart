import 'dart:io';
// import 'dart:math';

void main() {
  final String S = stdin.readLineSync()!;
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  final int idx = (S.length + one) ~/ two - one;
  print(S.substring(zero, idx) + S.substring(idx + one));
  exit(0);
}
