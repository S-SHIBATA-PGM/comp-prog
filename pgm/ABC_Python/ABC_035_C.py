from sys import stdin
from itertools import accumulate


def main():
    lines = stdin.readlines()
    N, Q = map(int, lines[0].split())
    lr = [[int(lri) - 1 for lri in line.split()] for line in lines[1:]]
    lst = [0] * (N + 1)
    # いもす法 Imos Method
    for l, r in lr:
        lst[l] += 1
        lst[r + 1] -= 1
    lst.pop()
    for li in accumulate(lst):
        print("1" if li % 2 else "0", end="")
    print()
    return


main()

