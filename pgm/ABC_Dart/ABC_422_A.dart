// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final String S = stdin.readLineSync()!;
  const int one = 1;
  const int two = 2;
  const int eight = 8;
  const int zero = 0;
  int world = int.parse(S[zero]);
  int stage = int.parse(S[two]);
  if (stage == eight) {
    world++;
    stage = one;
  } else {
    stage++;
  }
  print("$world${S[one]}$stage");
  exit(0);
}
