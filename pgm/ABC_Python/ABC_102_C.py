input = open(0).read

N, *An = map(int, input().split())


def main():
    for i in range(N):
        An[i] = An[i] - i - 1

    ans = 0

    An.sort()

    for i in range(N):
        ans += abs(An[i] - An[N // 2])

    print(ans)
    return


main()
