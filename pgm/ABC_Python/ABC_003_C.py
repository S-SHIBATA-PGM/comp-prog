from functools import reduce


def main():
    N, K = map(int, input().split())
    R = [int(i) for i in input().split()]
    R.sort()
    print('{:.9f}'.format(reduce(lambda x, y: (x + y) / 2, R[-K:], 0)))
    return


main()

