// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final String P = stdin.readLineSync()!;
  final int L = int.parse(stdin.readLineSync()!);
  final String Yes = 'Yes';
  final String No = 'No';
  print(P.length >= L ? Yes : No);
  exit(0);
}
