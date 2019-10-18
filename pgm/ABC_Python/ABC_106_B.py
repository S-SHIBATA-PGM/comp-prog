import math


def divisor(div, N):
    # 約数
    i = 1
    n = N

    while i <= math.sqrt(n):
        if n % i == 0:
            div.append([i, n / i])
        i += 1


N = int(input())

cnt = 0

for i in range(1, N + 1):
    if i % 2 == 0:
        continue

    div = []
    divisor(div, i)

    if len(div) == 4:
        cnt += 1

print(cnt)
