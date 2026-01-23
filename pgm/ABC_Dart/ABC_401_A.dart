// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final int S = int.parse(stdin.readLineSync()!);
  final int twoHundred = 200;
  final int twoHundredNinetyNine = 299;
  final String Success = "Success";
  final String Failure = "Failure";
  if (twoHundred <= S && S <= twoHundredNinetyNine) {
    print(Success);
  } else {
    print(Failure);
  }
  exit(0);
}
