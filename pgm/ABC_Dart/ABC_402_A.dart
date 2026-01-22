// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final String S = stdin.readLineSync()!;
  final String blank = '';
  print(
    S
        .split(blank)
        .where((c) => c == c.toUpperCase() && c != c.toLowerCase())
        .join(blank),
  );
  exit(0);
}
