import math


def divisor(div, N):
    # 約数
    i = 1
    n = N

    while i <= math.sqrt(n):
        if n % i == 0:
            div.add(i)
            div.add(n // i)
        i += 1


A, B, K = map(int, input().split())
a = set()
b = set()
divisor(a, A)
divisor(b, B)

print(sorted(list(a & b), reverse=True)[K - 1])
