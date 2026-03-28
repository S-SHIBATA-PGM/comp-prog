// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [String S, String T] = stdin.readLineSync()!.split(' ');
  const String AtCoder = 'AtCoder';
  const String Land = 'Land';
  const String Yes = 'Yes';
  const String No = 'No';
  if (S == AtCoder && T == Land) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
