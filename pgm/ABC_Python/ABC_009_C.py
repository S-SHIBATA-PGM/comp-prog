from sys import stdin
ALP = 26
after = []
before = []

read = stdin.read
readline = stdin.readline


def f():
    ret = 0
    for b, a in zip(before, after):
        ret += min(b, a)
    return ret


def main():
    global before, after
    N, K = map(int, readline().split())
    s = read().strip()
    before = [0] * ALP
    for i in range(N):
        before[ord(s[i]) - ord("a")] += 1
    after = before[:]
    curlen = N
    i = 0
    dif = 0
    ans = []
    while i < N:
        for j in range(ALP):
            if after[j] < 1:
                continue
            c = chr(ord("a") + j)
            cur = s[i]
            idx = ord(cur) - ord("a")
            before[idx] -= 1
            after[j] -= 1
            curlen -= 1
            flg = False
            if c != cur:
                dif += 1
                flg = True
            if curlen - f() + dif <= K:
                ans.append(c)
                i += 1
                break
            else:
                before[idx] += 1
                after[j] += 1
                curlen += 1
                if flg:
                    dif -= 1
    print("".join(ans))
    return


main()

