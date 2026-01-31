// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final String S = stdin.readLineSync()!;
  const String two = '2';
  const String blank = '';
  print(S.split(blank).where((c) => c == two).join(blank));
  exit(0);
}
