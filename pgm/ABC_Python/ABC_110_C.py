# aacd
# cdaa
# Yes‚É‚È‚é

from sys import stdin
from collections import Counter

input = stdin.readline

S = list(input())
T = list(input())


def main():
    C1 = Counter(S).most_common()
    C2 = Counter(T).most_common()

    if len(C1) != len(C2):
        print("No")
        return

    flg = True
    for i in range(len(C1)):
        if C1[i][1] != C2[i][1]:
            flg = False

    print("Yes" if flg else "No")
    return


main()
