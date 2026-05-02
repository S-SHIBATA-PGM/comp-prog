//  'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String Yes = 'Yes';
  const String No = 'No';
  const int two = 2;
  const int zero = 0;
  final String pattern = '^(.${zero.toString()}){${S.length ~/ two}}\$';
  if (RegExp(pattern).hasMatch(S)) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
