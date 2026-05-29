// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  const String Yes = 'Yes';
  const String No = 'No';
  const String sAnd = 'and';
  const String sNot = 'not';
  const String sThat = 'that';
  const String sThe = 'the';
  const String sYou = 'you';
  const Set<String> keyword = {sAnd, sNot, sThat, sThe, sYou};
  print(
    stdin.readLineSync()!.split(' ').any((word) => keyword.contains(word))
        ? Yes
        : No,
  );
  exit(0);
}
