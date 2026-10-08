// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const String hon = "hon";
  const String pon = "pon";
  const String bon = "bon";
  const int one = 1;
  const int two = 2;
  const int four = 4;
  const int five = 5;
  const int six = 6;
  const int seven = 7;
  const int eight = 8;
  const int nine = 9;
  const int ten = 10;
  const int zero = 0;
  print(switch (N % ten) {
    two || four || five || seven || nine => hon,
    zero || one || six || eight => pon,
    _ => bon,
  });
  exit(0);
}
