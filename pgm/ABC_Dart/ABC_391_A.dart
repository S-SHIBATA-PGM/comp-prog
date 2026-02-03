// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final String D = stdin.readLineSync()!;
  const String N = 'N';
  const String E = 'E';
  const String W = 'W';
  const String S = 'S';
  const String blank = '';
  const Map<String, String> NEWS = {N: S, E: W, W: E, S: N};
  print(D.split(blank).map((s) => NEWS[s]).join(blank));
  exit(0);
}
