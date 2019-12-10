from sys import stdin


def main():
    N, Q = map(int, input().split())
    S = input()
    LR = [int(x) - 1 for x in stdin.read().split()]
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
