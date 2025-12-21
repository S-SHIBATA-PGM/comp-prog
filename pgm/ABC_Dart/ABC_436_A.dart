import 'dart:io';

void main() {
  const String circle = 'o';
  int N = int.parse(stdin.readLineSync()!);
  String S = stdin.readLineSync()!;
  print(S.padLeft(N, circle));
  exit(0);
}
