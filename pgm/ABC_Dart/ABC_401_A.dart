// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final int S = int.parse(stdin.readLineSync()!);
  final int twoHundred = 200;
  final int twoHundredNinetyNine = 299;
  final String Success = "Success";
  final String Failure = "Failure";
  print(twoHundred <= S && S <= twoHundredNinetyNine ? Success : Failure);
  exit(0);
}
