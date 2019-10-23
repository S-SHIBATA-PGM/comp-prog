from sys import stdin


def main():
    lines = stdin.readlines()
    T = int(lines[0].split()[1])
    tn = [int(ti) for ti in lines[1].split()]
    ans = 0
    for t1, t2 in zip(tn[0:], tn[1:]):
        ans += min(T, t2 - t1)
    ans += T
    print(ans)
    return


main()
