def main():
    N, K, *s = map(int, open(0).read().split())
    if 0 < s.count(0):
        print(N)
        return
    accum = s[0] if s[0] <= K else 1
    ans = 0
    cur = 1 if s[0] <= K else 0
    i = 0
    j = 1
    while True:
        if N <= j:
            break
        if accum * s[j] <= K:
            accum *= s[j]
            cur += 1
            j += 1
        else:
            ans = max(ans, cur)
            while True:
                flg = False
                if 0 < cur:
                    accum //= s[i]
                    cur -= 1
                    flg = True
                i += 1
                if N <= i:
                    j = i
                    break
                elif flg and s[i] <= K:
                    if cur == 0:
                        accum *= s[i]
                        cur += 1
                        j = i + 1
                    break
                elif s[i] <= K:
                    accum = s[i]
                    cur = 1
                    j = i + 1
                    break
    print(max(ans, cur))
    return


main()

