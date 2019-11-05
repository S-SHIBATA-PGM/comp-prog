from bisect import bisect_left
from sys import stdin


def lower_bound(lst, key):
    # key以上
    return lst[bisect_left(lst, key)]


def main():
    lines = stdin.readlines()
    X, Y = map(int, lines[1].split())
    a = [int(x) for x in lines[2].split()]
    b = [int(x) for x in lines[3].split()]
    ans = 0.0
    cur = 0
    port = "A"
    while port == "A" and cur <= a[-1] or port == "B" and cur <= b[-1]:
        ans += 0.5
        if port == "A":
            cur = lower_bound(a, cur) + X
            port = "B"
        else:
            cur = lower_bound(b, cur) + Y
            port = "A"
    print(int(ans))
    return


main()

