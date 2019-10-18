from sys import stdin
from functools import reduce
# バージョン 3.4.X 以前
import fractions
# バージョン 3.4.X より 後
# import math

input = stdin.readline

N, X = map(int, input().split())

xn = [abs(X - int(i)) for i in input().split()]


def main():
    print(reduce(fractions.gcd, xn))
    return


main()
