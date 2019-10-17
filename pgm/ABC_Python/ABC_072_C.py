from collections import Counter

N = int(input())
an = Counter(map(int, input().split()))


def main():
    print(max([an[k - 1] + v + an[k + 1] for k, v in an.items()]))
    return


main()
