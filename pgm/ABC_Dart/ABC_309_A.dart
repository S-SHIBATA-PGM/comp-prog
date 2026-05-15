// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = 'Yes';
  const String No = 'No';
  const int one = 1;
  const int three = 3;
  const int zero = 0;
  const int H = three;
  const int W = three;
  final List<Int32List> N = List.generate(
    H,
    (y) => Int32List.fromList(List.generate(W, (x) => y * W + x + one)),
  );
  // 右、左
  final Int32List dy = Int32List.fromList([zero, zero]);
  final Int32List dx = Int32List.fromList([one, -one]);
  String adjacent = No;
  loop:
  for (int y = zero; y < H; y++) {
    for (int x = zero; x < W; x++) {
      if (N[y][x] == A) {
        for (int k = zero; k < dy.length; k++) {
          final int ny = y + dy[k];
          final int nx = x + dx[k];
          if (ny >= zero && ny < H && nx >= zero && nx < W) {
            if (N[ny][nx] == B) {
              adjacent = Yes;
              break loop;
            }
          }
        }
        break loop;
      }
    }
  }
  print(adjacent);
  exit(0);
}
