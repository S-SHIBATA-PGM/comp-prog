// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int H, int W] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final [int R, int C] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int one = 1;
  const int two = 2;
  if (one < R && R < H && one < C && C < W) {
    print(two + two);
  } else if ((R == one || R == H) && one < C && C < W) {
    print(two + min(one, H - one));
  } else if (one < R && R < H && (C == one || C == W)) {
    print(two + min(one, W - one));
  } else {
    print(min(one, H - one) + min(one, W - one));
  }
  exit(0);
}
