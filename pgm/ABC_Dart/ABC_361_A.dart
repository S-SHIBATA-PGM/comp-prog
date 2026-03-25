// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final FastScanner scanner = FastScanner();
  final int N = scanner.nextInt();
  final int K = scanner.nextInt();
  final int X = scanner.nextInt();
  const int zero = 0;
  const String space = ' ';
  final StringBuffer out = StringBuffer();
  for (int i = zero; i <= N; i++) {
    if (i > zero) {
      out.write(space);
    }
    out.write(i == K ? X : scanner.nextInt());
  }
  stdout.writeln(out.toString());
  exit(0);
}

class FastScanner {
  static const int one = 1;
  static const int nine = 9;
  static const int ten = 10;
  static const int zero = 0;
  static final int codeZero = zero.toString().codeUnitAt(zero);
  static final int codeNine = nine.toString().codeUnitAt(zero);
  int nextInt() {
    int res = zero;
    int byte = stdin.readByteSync();
    // 数字以外 (空白、改行など) をスキップ
    while (byte != -one && byte < codeZero) {
      byte = stdin.readByteSync();
    }
    if (byte == -one) {
      // EOF
      return zero;
    }
    while (byte >= codeZero && byte <= codeNine) {
      // 数字
      res = res * ten + (byte - codeZero);
      byte = stdin.readByteSync();
    }
    return res;
  }
}
