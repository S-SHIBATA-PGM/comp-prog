// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final sc = FastScanner();
  final int N = sc.nextInt();
  final Int32List H = sc.nextIntArray(N);
  const int no = -1;
  const int one = 1;
  const int zero = 0;
  final int H1 = H[zero];
  int idx = H.indexWhere((int h) => h > H1);
  if (idx != no) {
    print(idx + one);
  } else {
    print(no);
  }
  exit(0);
}

// FastScanner start
class FastScanner {
  int _nextByte() => stdin.readByteSync();

  int nextInt() {
    int res = 0;
    int byte = _nextByte();
    while (byte != -1 && byte <= 32) {
      byte = _nextByte();
    }
    if (byte == -1) return 0;
    bool negative = false;
    if (byte == 45) {
      negative = true;
      byte = _nextByte();
    }
    while (byte >= 48 && byte <= 57) {
      res = res * 10 + (byte - 48);
      byte = _nextByte();
    }
    return negative ? -res : res;
  }

  Int32List nextIntArray(int n) {
    final arr = Int32List(n);
    for (int i = 0; i < n; i++) {
      arr[i] = nextInt();
    }
    return arr;
  }
}
// FastScanner end