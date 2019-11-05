from itertools import combinations


def main():
    A, B, C, D, E = map(int, input().split())

    print(sorted(list(set(x + y + z for x, y, z
                          in combinations((A, B, C, D, E), 3))))[-3])
    return


main()

