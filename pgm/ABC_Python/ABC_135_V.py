from sys import stdin


def main():
    readline = stdin.readline
    readline()
    *A, = map(int, readline().split())
    *B, = map(int, readline().split())
    ans = 0
    pre = 0
    for a, b in zip(A, B):
        pre += b
        tmp = a if a < pre else pre
        pre -= tmp
        ans += tmp
    print(ans)
    return


main()
