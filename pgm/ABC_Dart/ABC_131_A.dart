// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String bad = 'Bad';
  const String good = 'Good';
  const int one = 1;
  const int zero = 0;
  bool hasConsecutiveSame = false;
  for (int i = zero; i < S.length - one; i++) {
    if (S[i] == S[i + one]) {
      hasConsecutiveSame = true;
      break;
    }
  }
  print(hasConsecutiveSame ? bad : good);
  exit(0);
}
