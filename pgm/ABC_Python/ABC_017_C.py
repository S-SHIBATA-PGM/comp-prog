from itertools import accumulate
from sys import stdin


def main():
    lines = stdin.readlines()
    N, M = map(int, lines[0].split())
    lr = [0] * (M + 2)
    total = 0
    for l, r, s in [[int(x) for x in line.split()] for line in lines[1:]]:
        lr[l] += s
        lr[r + 1] -= s
        total += s
    print(total - min(list(accumulate(lr))[1: -1]))
    return


main()

