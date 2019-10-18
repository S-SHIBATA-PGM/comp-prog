input = open(0).read

N, K, *An = map(int, input().split())


def main():
    num = (N - 1) / (K - 1)
    print(int(num) + 1 if num != int(num) else int(num))
    return


main()
