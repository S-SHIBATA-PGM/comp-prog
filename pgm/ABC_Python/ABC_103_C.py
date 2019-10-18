input = open(0).read

N, *an = [int(i) - 1 for i in input().split()]
N += 1


def main():
    print(sum(an))
    return


main()
