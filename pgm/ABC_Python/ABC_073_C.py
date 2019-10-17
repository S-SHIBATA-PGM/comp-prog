from collections import Counter
from sys import stdin

lines = stdin.readlines
N, *A = [int(line) for line in lines()]

An = Counter(A)


def main():
    print(sum([1 for k, v in An.items() if v % 2]))
    return


main()
