input = open(0).read

N, *an = map(int, input().split())


def main():
    ans = 0

    for i in range(N):
        tmp = 0
        while an[i]:
            if an[i] % 2:
                break
            else:
                tmp += 1
                an[i] //= 2

        ans += tmp

    print(ans)
    return


main()
