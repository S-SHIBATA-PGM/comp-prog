// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  stdin.readLineSync()!;
  final List<String> S = stdin.readLineSync()!.split('/');
  const String cOne = '1';
  const String cTwo = '2';
  const String Yes = 'Yes';
  const String No = 'No';
  const String blank = '';
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  if (S.length == two &&
      S[zero].length == S[one].length &&
      S[zero].split(blank).every((s) => s == cOne) &&
      S[one].split(blank).every((s) => s == cTwo)) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
