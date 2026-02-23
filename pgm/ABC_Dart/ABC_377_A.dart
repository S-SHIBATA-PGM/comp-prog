// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final String S = stdin.readLineSync()!;
  const String A = "A";
  const String B = "B";
  const String C = "C";
  const String Yes = "Yes";
  const String No = "No";
  const List<String> targets = [A, B, C];
  if (targets.every((c) => S.contains(c))) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
