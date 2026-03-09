// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

const String gt = ">";
const String A = "A";
const String B = "B";
const String C = "C";
const String space = " ";
const int one = 1;
const int two = 2;
const int zero = 0;

void rankABC(String s, String a, String b, List<String> abc) {
  int indexA = abc.indexOf(a);
  int indexB = abc.indexOf(b);
  if (s == gt) {
    if (indexA > indexB) {
      abc.removeAt(indexA);
      abc.insert(indexB, a);
    }
  } else {
    if (indexA < indexB) {
      abc.removeAt(indexB);
      abc.insert(indexA, b);
    }
  }
}

void main() {
  final List<String> S = stdin.readLineSync()!.split(space);
  final List<String> abc = [A, B, C];
  rankABC(S[zero], A, B, abc);
  rankABC(S[one], A, C, abc);
  rankABC(S[two], B, C, abc);
  print(abc[one]);
  exit(0);
}
