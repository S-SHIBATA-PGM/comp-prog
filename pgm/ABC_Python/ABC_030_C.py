from bisect import bisect_left
from sys import stdin


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
            cur = a[bisect_left(a, cur)] + X
            port = "B"
        else:
            cur = b[bisect_left(b, cur)] + Y
            port = "A"
    print(int(ans))
    return


main()

