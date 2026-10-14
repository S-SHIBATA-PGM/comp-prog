// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String ABC = 'ABC';
  const String ARC = 'ARC';
  const int zero = 0;
  print(S.compareTo(ABC) == zero ? ARC : ABC);
  exit(0);
}
