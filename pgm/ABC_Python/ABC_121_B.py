N, M, C = map(int, input().split())
Bn = [int(i) for i in input().split()]
An = [[int(j) for j in input().split()] for i in range(N)]


def main():
    ans = 0

    for i in range(N):
        num = 0
        for Bi, Ai in zip(Bn, An[i]):
            num += Ai * Bi
        if 0 < num + C:
            ans += 1

    print(ans)
    return


main()
