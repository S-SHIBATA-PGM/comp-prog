import 'dart:io';

void main() {
  const String circle = 'o';
  final int N = int.parse(stdin.readLineSync()!);
  final String S = stdin.readLineSync()!;
  print(S.padLeft(N, circle));
  exit(0);
}
