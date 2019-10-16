def gcd(a, b):
    if not a:
        # a が ゼロ ならば b
        return b
    if not b:
        # b が ゼロ ならば a
        return a
    while b:
        a, b = b, a % b
    return a


def main():
    N, *A = map(int, open(0).read().split())
    A.insert(0, 0)
    A.append(0)
    L = [0] * (N + 2)
    R = L[:]
    for i in range(1, N):
        L[i + 1] = gcd(L[i], A[i])
    for i in range(N, 0, -1):
        R[i] = gcd(R[i + 1], A[i])
    print(max(gcd(L[i], R[i + 1]) for i in range(1, N + 1)))
    return


main()
