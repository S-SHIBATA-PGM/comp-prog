N = int(input())

C = []
S = []
F = []

for i in range(N - 1):
    c, s, f = map(int, input().split())
    C.append(c)
    S.append(s)
    F.append(f)


def next(s, t):
    # 始発
    if t < S[s]:
        t = S[s]

    # タイムラグ
    elif t % F[s]:
        t += F[s] - t % F[s]

    # 列車の移動時間
    t += C[s]

    return t


def main():
    # 出発駅
    for i in range(N - 1):
        t = next(i, 0)

        # 途中駅
        for j in range(i + 1, N - 1):
            t = next(j, t)

        print(t)

    print(0)

    return


main()
