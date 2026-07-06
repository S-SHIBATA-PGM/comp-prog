// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String sZero = "0";
  const int one = 1;
  const int zero = 0;
  print('$sZero${S.substring(zero, S.length - one)}');
  exit(0);
}
