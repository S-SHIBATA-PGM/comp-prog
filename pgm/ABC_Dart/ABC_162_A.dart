// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String N = stdin.readLineSync()!;
  const String Yes = 'Yes';
  const String No = 'No';
  const String sSeven = '7';
  print(N.contains(sSeven) ? Yes : No);
  exit(0);
}
