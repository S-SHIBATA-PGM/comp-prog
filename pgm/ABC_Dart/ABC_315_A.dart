// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final S = stdin.readLineSync()!;
  const String a = 'a';
  const String e = 'e';
  const String i = 'i';
  const String o = 'o';
  const String u = 'u';
  const String lBrack = '[';
  const String rBrack = ']';
  const String blank = '';
  final pattern = [
    lBrack,
    [a, e, i, o, u].join(),
    rBrack,
  ].join();
  print(S.replaceAll(RegExp(pattern), blank));
  exit(0);
}
