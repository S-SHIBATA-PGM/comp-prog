import math

N, K = map(int, input().split())


def main():
    print(math.ceil((N - 1) / (K - 1)))
    return


main()
