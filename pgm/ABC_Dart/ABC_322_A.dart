//  'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final String S = stdin.readLineSync()!;
  const String ABC = 'ABC';
  const int one = 1;
  print(S.indexOf(ABC) > -one ? S.indexOf(ABC) + one : S.indexOf(ABC));
  exit(0);
}
