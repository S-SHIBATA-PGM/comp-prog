import 'dart:io';
// import 'dart:math';

void main() {
  final [int N, int M] = stdin
      .readLineSync()!
      .split(" ")
      .map(int.parse)
      .toList();
  const String OK = "OK";
  const String Too = "Too Many Requests";
  const int zero = 0;
  for (int i = zero; i < N; i++) {
    if (i < M) {
      print(OK);
    } else {
      print(Too);
    }
  }
  exit(0);
}
