def main():
    N, K, Q, *A = map(int, open(0).read().split())
    ans = [0] * N
    for a in A:
        ans[a - 1] += 1
    print("\n".join("Yes" if Q < K + a else "No" for a in ans))
    return


main()
