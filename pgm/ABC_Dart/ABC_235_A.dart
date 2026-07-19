// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [String a, String b, String c] = stdin.readLineSync()!.split('');
  print(int.parse("$a$b$c") + int.parse("$b$c$a") + int.parse("$c$a$b"));
  exit(0);
}
