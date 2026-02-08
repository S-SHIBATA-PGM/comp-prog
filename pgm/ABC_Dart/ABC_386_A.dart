// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int A, int B, int C, int D] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = 'Yes';
  const String No = 'No';
  const int one = 1;
  const int two = 2;
  const int three = 3;
  const int thirteen = 13;
  const int zero = 0;
  final List<int> cards = List.filled(thirteen, zero);
  cards[A - one]++;
  cards[B - one]++;
  cards[C - one]++;
  cards[D - one]++;
  int threeCards = zero;
  int pairs = zero;
  for (int count in cards) {
    if (count == three) {
      threeCards++;
      break;
    } else if (count == two) {
      pairs++;
    }
  }
  if (threeCards == one) {
    print(Yes);
  } else if (pairs == two) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
