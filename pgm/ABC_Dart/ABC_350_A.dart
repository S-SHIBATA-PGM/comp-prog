// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String Yes = 'Yes';
  const String No = 'No';
  const int end = 349;
  const int cancel = 316;
  const int zero = 0;
  final int edition = int.parse(S.substring(3, 6));
  if (edition <= end && edition != cancel && edition != zero) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
