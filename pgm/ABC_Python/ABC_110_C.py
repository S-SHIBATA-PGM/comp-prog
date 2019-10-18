# aacd
# cdaa
# Yes‚É‚È‚é

from sys import stdin
from collections import Counter

input = stdin.readline

S = list(input())
T = list(input())


def main():
    C1 = sorted(Counter(S).values())
    C2 = sorted(Counter(T).values())

    print("Yes" if C1 == C2 else "No")
    return


main()
