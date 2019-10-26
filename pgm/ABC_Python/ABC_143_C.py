from itertools import groupby


def main():
    S = open(0).read().split()[1]
    print(len(list(groupby(S))))


main()
