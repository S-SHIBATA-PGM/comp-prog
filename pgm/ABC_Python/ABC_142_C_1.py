from operator import itemgetter


def main():
    A = {k + 1: v for k, v in enumerate(map(int, open(0).read().split()[1:]))}
    # value 昇順
    print(" ".join([str(i[0]) for i in sorted(A.items(), key=itemgetter(1))]))
    return


main()
