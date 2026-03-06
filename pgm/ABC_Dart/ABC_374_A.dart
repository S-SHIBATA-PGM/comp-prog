// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  const String san = "san";
  const String Yes = "Yes";
  const String No = "No";
  if (stdin.readLineSync()!.endsWith(san)) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
