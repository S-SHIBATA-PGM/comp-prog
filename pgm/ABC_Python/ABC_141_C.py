from collections import Counter


def main():
    N, K, Q, *A = map(int, open(0).read().split())
    A = Counter(A)
    print("\n".join(["Yes" if Q < K + A[i]
                     else "No" for i in range(1, N + 1)]))
    return


main()
