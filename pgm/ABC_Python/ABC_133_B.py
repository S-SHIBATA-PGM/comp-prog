N, D = map(int, input().split())
X = [[int(j) for j in input().split()] for i in range(N)]
ans = 0
print(
    sum(
        [
            (
                sum([(X[j][k] - X[i][k]) ** 2 for k in range(D)]) ** 0.5
            ).is_integer()
            for i in range(N) for j in range(i + 1, N)
        ]
    )
)
