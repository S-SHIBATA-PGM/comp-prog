import math

input = open(0).read

N, K, *An = map(int, input().split())


def main():
    print(math.ceil((N - 1) / (K - 1)))
    return


main()
