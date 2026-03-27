// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  const String Takahashi = "Takahashi";
  const int zero = 0;
  String? S;
  int cnt = zero;
  while ((S = stdin.readLineSync()) != null) {
    if (S == Takahashi) {
      cnt++;
    }
  }
  print(cnt);
  exit(0);
}
