// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final String S = stdin.readLineSync()!;
  const String blank = '';
  const int two = 2;
  print(S.split(blank).map((String s) => s * two).join(blank));
  exit(0);
}
