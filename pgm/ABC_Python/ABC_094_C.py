input = open(0).read

N, *X = map(int, input().split())


def main():
    l, r = sorted(X)[N // 2 - 1:N // 2 + 1]

    print('\n'.join([str(r) if x < r else str(l) for x in X]))
    return


main()
