//  'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final String S = stdin.readLineSync()!;
  const String Yes = 'Yes';
  const String No = 'No';
  const String ab = 'ab';
  const String ba = 'ba';
  print(S.contains(ab) || S.contains(ba) ? Yes : No);
  exit(0);
}
