from sys import stdin


def main():
    readline = stdin.readline
    readline()
    *A, = map(int, readline().split())
    *B, = map(int, readline().split())
    B.append(0)
    ans = 0
    mon = 0
    pre = 0
    for a, b in zip(A, B):
        pre += b
        mon += a
        tmp = mon if mon < pre else pre
        ans += tmp
        mon = a - tmp
        pre -= tmp
    print(ans)
    return


main()
