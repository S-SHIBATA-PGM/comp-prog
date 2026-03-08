// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  const String reg = '\\.+';
  const String blank = '';
  print(stdin.readLineSync()!.replaceAll(RegExp(reg), blank));
  exit(0);
}
