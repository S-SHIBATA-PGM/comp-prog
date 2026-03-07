// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  const int one = 1;
  const int zero = 0;
  String? line;
  int i = one;
  int cnt = zero;
  while ((line = stdin.readLineSync()) != null) {
    String s = line!;
    if (s.length == i) {
      cnt++;
    }
    i++;
  }
  print(cnt);
  exit(0);
}
