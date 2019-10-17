INF = 1000000007


def modmulti(a, b):
    # aとbを掛けた値をmodする(a * b mod p)
    return a * b % INF


N = int(input())

ans = 1

for i in range(1, N + 1):
    ans = modmulti(ans, i)

print(ans)
