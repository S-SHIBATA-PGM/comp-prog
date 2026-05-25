// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final String S = stdin.readLineSync()!;
  const String dot = ".";
  const String bar = "|";
  const String ast = "*";
  const String strIn = "in";
  const String strOut = "out";
  final String escBar = RegExp.escape(bar);
  final String escAst = RegExp.escape(ast);
  final String pattern = "$escBar$dot$ast$escAst$dot$ast$escBar";
  if (RegExp(pattern).hasMatch(S)) {
    print(strIn);
  } else {
    print(strOut);
  }
  exit(0);
}
