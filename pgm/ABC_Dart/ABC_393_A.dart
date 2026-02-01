// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [String S1, String S2] = stdin.readLineSync()!.split(' ').toList();
  const int one = 1;
  const int two = 2;
  const int three = 3;
  const int four = 4;
  const String sick = 'sick';
  const String fine = 'fine';
  if (S1 == sick && S2 == sick) {
    print(one);
  } else if (S1 == sick && S2 == fine) {
    print(two);
  } else if (S1 == fine && S2 == sick) {
    print(three);
  } else {
    print(four);
  }
  exit(0);
}
