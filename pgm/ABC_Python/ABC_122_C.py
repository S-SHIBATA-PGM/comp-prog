from sys import stdin


def iterate_tokens():
    for line in stdin:
        for word in line.split():
            yield word


def main():
    tokens = iterate_tokens()
    next(tokens)
    Q = int(next(tokens))
    S = next(tokens)
    L = []
    R = []
    for i in range(Q):
        L.append(int(next(tokens)) - 1)
        R.append(int(next(tokens)) - 1)
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
    for l, r in zip(L, R):
        print(AC[r] - AC[l])
    return


main()
