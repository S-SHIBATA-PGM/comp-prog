from sys import stdin


def main():
    readline = stdin.readline
    readline()
    *A, = map(int, readline().split())
    *B, = map(int, readline().split())
    ans = 0
    pre = 0
    for a, b in zip(A, B):
        brave = pre + b
        if brave < a:
            ans += brave
            pre = 0
        elif a < pre:
            ans += a
            pre = b
        else:
            ans += a
            pre = brave - a
    if A[-1] < pre:
        ans += A[-1]
    else:
        ans += pre
    print(ans)
    return


main()
