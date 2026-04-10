// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String lt = '<';
  const String eq = '=';
  const String gt = '>';
  const String Yes = 'Yes';
  const String No = 'No';
  const String blank = '';
  const int one = 1;
  if (S.startsWith(lt) &&
      S.endsWith(gt) &&
      S.substring(one, S.length - one).split(blank).every((c) => c == eq)) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
