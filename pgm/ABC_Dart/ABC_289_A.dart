// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final s = stdin.readLineSync()!;
  const String blank = "";
  const int one = 1;
  print(
    s.codeUnits
        .map((int c) {
          final int code = c ^ one;
          return String.fromCharCode(code);
        })
        .join(blank),
  );
  exit(0);
}
