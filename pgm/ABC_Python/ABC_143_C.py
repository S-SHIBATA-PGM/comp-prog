from itertools import groupby


def main():
    S = open(0).read().split()[1]
    print(sum(1 for x in groupby(S)))


main()
