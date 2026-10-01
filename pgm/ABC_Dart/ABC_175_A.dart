// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String R = "R";
  const String caret = "^";
  const String lbrack = "[";
  const String rbrack = "]";
  const String pattern = "$lbrack$caret$R$rbrack";
  print(S.split(RegExp(pattern)).map((s) => s.length).reduce(max));
  exit(0);
}
