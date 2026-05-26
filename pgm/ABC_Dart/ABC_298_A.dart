// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final List<String> S = stdin.readLineSync()!.split("");
  const String good = "o";
  const String failing = "x";
  const String Yes = "Yes";
  const String No = "No";
  print(S.any((it) => it == good) && S.every((it) => it != failing) ? Yes : No);
  exit(0);
}
