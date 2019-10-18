N = int(input())


def main():
    A1 = [int(i) for i in input().split()]
    A2 = [int(i) for i in input().split()]

    for i in range(N - 1):
        A1[i + 1] += A1[i]
        A2[i + 1] += A2[i]

    ans = -1

    for i in range(N):
        ans = max(ans, A1[i] + (A2[-1] if i == 0 else A2[-1] - A2[i - 1]))

    print(ans)

    return


main()
