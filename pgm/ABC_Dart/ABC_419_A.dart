import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final String S = stdin.readLineSync()!;
  final String red = 'red';
  final String blue = 'blue';
  final String green = 'green';
  final String SSS = 'SSS';
  final String FFF = 'FFF';
  final String MMM = 'MMM';
  final String Unknown = 'Unknown';
  final Map<String, String> Language = Map.unmodifiable(
    HashMap<String, String>.from({red: SSS, blue: FFF, green: MMM}),
  );
  print(Language.containsKey(S) ? Language[S] : Unknown);
  exit(0);
}
