def main():
    N, K = map(int, input().split())
    ans = [1] * N
    for i in range(K):
        input()
        A = map(int, input().split())
        for Ai in A:
            ans[Ai - 1] = 0
    print(sum(ans))
    return


main()
