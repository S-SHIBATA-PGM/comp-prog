// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int Y = int.parse(stdin.readLineSync()!);
  const int four = 4;
  const int hundred = 100;
  const int year = 365;
  const int leapYear = 366;
  const int fourHundred = 400;
  const int zero = 0;
  if (Y % four != zero) {
    print(year);
  } else if (Y % four == zero && Y % hundred != zero) {
    print(leapYear);
  } else if (Y % hundred == zero && Y % fourHundred != zero) {
    print(year);
  } else {
    print(leapYear);
  }
  exit(0);
}
