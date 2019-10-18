from itertools import combinations

input = open(0).read

Sn = [i[0] for i in input().split() if i[0] in "MARCH"]


def main():

    print(
        sum(x * y * z for x, y, z
            in combinations([Sn.count(s) for s in "MARCH"], 3)))

    return


main()
