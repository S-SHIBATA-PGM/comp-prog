// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  var [int S, int T, int X] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = "Yes";
  const String No = "No";
  const int twentyFour = 24;
  T = (T < S) ? T + twentyFour : T;
  X = (X < S) ? X + twentyFour : X;
  print(S <= X && X < T ? Yes : No);
  exit(0);
}
