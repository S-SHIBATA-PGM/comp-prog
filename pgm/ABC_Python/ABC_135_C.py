from sys import stdin


def main():
    readline = stdin.readline
    readline()
    *A, = map(int, readline().split())
    *B, = map(int, readline().split())
    pre = A[0]
    ans = 0
    for a, b in zip(A[1:], B):
        tmp1 = pre if pre < b else b
        b -= tmp1
        tmp2 = a if a < b else b
        ans += tmp1 + tmp2
        pre = a - tmp2
    print(ans)
    return


main()
