// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final String S = stdin.readLineSync()!;
  const String Yes = 'Yes';
  const String No = 'No';
  const String M = 'M';
  const String F = 'F';
  const String MM = '$M$M';
  const String FF = '$F$F';
  print(!S.contains(MM) && !S.contains(FF) ? Yes : No);
  exit(0);
}
