from sys import stdin


def main():
    readline = stdin.readline
    read = stdin.read
    N, Q = map(int, readline().split())
    S = readline().strip()
    *LR, = map(lambda x: int(x) - 1, read().split())
    AC = []
    pre = None
    cnt = 0
    for c in S:
        if c == "A":
            pre = "A"
        elif pre == "A" and c == "C":
            cnt += 1
            pre = None
        elif pre == "A":
            pre = None
        AC.append(cnt)
    for l, r in zip(*[iter(LR)] * 2):
        print(AC[r] - AC[l])
    return


main()
