A, B = map(int, input().split())


def main():
    ans = 0

    for i in range(A, B):
        ans ^= i
    print(ans)
    return


main()
