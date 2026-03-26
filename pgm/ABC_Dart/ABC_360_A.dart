// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String R = 'R';
  const String M = 'M';
  const String Yes = 'Yes';
  const String No = 'No';
  if (S.indexOf(R) < S.indexOf(M)) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
