// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String Yes = "Yes";
  const String No = "No";
  const List<String> arr = ["ACE", "BDF", "CEG", "DFA", "EGB", "FAC", "GBD"];
  if (arr.contains(S)) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
