from itertools import accumulate
from operator import mul
INF = float('inf')


def main():
    N, K, *s = map(int, open(0).read().split())
    s = list(accumulate(s, mul))
    ans = N
    if s[-1] <= K:
        print(ans)
        return
    ans = 0
    i = 0
    pre = 1
    while i < N:
        if K < s[i] // pre:
            pre = s[i]
            i += 1
            continue
        tmp = 1
        for j in range(i + 1, N):
            if s[j] // pre <= K:
                tmp += 1
            else:
                ans = max(ans, tmp)
                pre = s[j]
                i = j
                break
        else:
            ans = max(ans, tmp)
            break
    print(ans)
    return


main()

