from collections import Counter
from sys import stdin

lines = stdin.readlines

N, *A = map(int, lines())
An = Counter(A)


def main():
    print(sum([1 for v in An.values() if v % 2]))
    return


main()
