// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S1 = stdin.readLineSync()!;
  final String S2 = stdin.readLineSync()!;
  const String Yes = "Yes";
  const String No = "No";
  const String sharp = "#";
  const int one = 1;
  const int zero = 0;
  if (S1[zero] == sharp &&
      S1[one] != sharp &&
      S2[zero] != sharp &&
      S2[one] == sharp) {
    print(No);
  } else if (S1[zero] != sharp &&
      S1[one] == sharp &&
      S2[zero] == sharp &&
      S2[one] != sharp) {
    print(No);
  } else {
    print(Yes);
  }
  exit(0);
}
