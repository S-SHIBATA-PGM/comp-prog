from itertools import combinations


def main():
    ABCDE = map(int, input().split())

    print(sorted(list(set(sum(x) for x
                          in combinations(ABCDE, 3))))[-3])
    return


main()

