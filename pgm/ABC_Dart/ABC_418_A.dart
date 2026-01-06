// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  stdin.readLineSync()!;
  final String S = stdin.readLineSync()!;
  final String tea = 'tea';
  final String Yes = 'Yes';
  final String No = 'No';
  print(S.endsWith(tea) ? Yes : No);
  exit(0);
}
