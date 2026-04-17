//  'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String Yes = 'Yes';
  const String No = 'No';
  const int one = 1;
  const int zero = 0;
  print(S == S[zero].toUpperCase() + S.substring(one).toLowerCase() ? Yes : No);
  exit(0);
}
