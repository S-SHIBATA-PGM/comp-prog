N = int(input())


def main():
    ans = N

    for i in range(N + 1):
        num = 0
        cur = i

        while 0 < cur:
            num += cur % 6
            cur //= 6

        cur = N - i

        while 0 < cur:
            num += cur % 9
            cur //= 9

        if num < ans:
            ans = num

    print(ans)
    return


main()
