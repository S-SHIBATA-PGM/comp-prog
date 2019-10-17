INF = 1000000007


def modmulti(a, b):
    # aとbを掛けた値をmodする(a * b mod p)
    return a * b % INF


A, B, C = map(int, input().split())

print(modmulti(modmulti(A, B), C))
