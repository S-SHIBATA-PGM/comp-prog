from itertools import accumulate
from sys import stdin


def main():
    lines = stdin.readlines()
    N, K = map(int, lines[0].split())
    a = [0]
    a.extend(list(accumulate(map(int, lines[1].split()))))
    print(sum(a[i + K - 1] - a[i - 1] for i in range(1, N - K + 2)))
    return


main()

