INF = 1000000007

N, M = map(int, input().split())

ab = []

for i in range(N):
    ab.append([int(i) for i in input().split()])

cd = []

for i in range(M):
    cd.append([int(i) for i in input().split()])

for i in range(N):
    ans = 0
    dst = INF
    for j in range(M):
        tmp = abs(cd[j][0] - ab[i][0]) + abs(cd[j][1] - ab[i][1])

        if tmp < dst:
            # 0-indexed
            dst = tmp
            ans = j + 1

    print(ans)
