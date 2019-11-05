from itertools import combinations


def main():
    print(sorted(list(set(sum(x) for x
                          in combinations(map(int, input().split()), 3))))[-3])
    return


main()

