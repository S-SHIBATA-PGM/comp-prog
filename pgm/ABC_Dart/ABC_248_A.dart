// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final Set<String> S = stdin.readLineSync()!.split('').toSet();
  const int zero = 0;
  final int codeZero = '0'.codeUnitAt(zero);
  final int codeNine = '9'.codeUnitAt(zero);
  final Set<String> set = <String>{};
  for (int i = codeZero; i <= codeNine; i++) {
    set.add(String.fromCharCode(i));
  }
  print(set.difference(S).first);
  exit(0);
}
