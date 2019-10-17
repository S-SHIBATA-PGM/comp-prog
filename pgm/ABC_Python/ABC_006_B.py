INF = 10007


def modadd(a, b):
    # aとbを足した値をmodする(a + b mod p)
    return (a + b) % INF


def tribonacci(n):
    a = []
    a.append(0)
    a.append(0)
    a.append(1)

    if n < 2:
        return a[1]
    if n == 3:
        return a[2]

    for i in range(3, n):
        a.append(
            modadd(modadd(a[i - 1], a[i - 2]), a[i - 3]))

    return a[n - 1]


n = int(input())

print(tribonacci(n))
