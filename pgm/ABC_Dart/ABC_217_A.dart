// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [String S, String T] = stdin.readLineSync()!.split(' ');
  const String Yes = 'Yes';
  const String No = 'No';
  const int zero = 0;
  print(S.compareTo(T) < zero ? Yes : No);
  exit(0);
}
