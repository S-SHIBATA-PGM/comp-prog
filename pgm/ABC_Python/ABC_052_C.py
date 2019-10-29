INF = int(1e9+7)


def primeNumber(n, pn):
    # Sieve of Eratosthenes
    b = [True] * (n + 1)
    for i in range(2, n + 1):
        if b[i]:
            pn.append(i)
            for j in range(i, n + 1, i):
                b[j] = False
    return


def main():
    N = int(input())
    pn = []
    primeNumber(N, pn)
    ans = 1
    for p in pn:
        cnt = 0
        cum = p
        while cum <= N:
            cnt += N // cum
            cum *= p
        ans = ans * (cnt + 1) % INF
    print(ans)


main()

