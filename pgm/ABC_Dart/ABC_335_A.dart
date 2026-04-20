//  'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String sFour = '4';
  const int one = 1;
  const int zero = 0;
  print([S.substring(zero, S.length - one), sFour].join());
  exit(0);
}
