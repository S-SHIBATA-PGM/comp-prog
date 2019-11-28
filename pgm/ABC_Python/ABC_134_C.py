def main():

    N, *A = map(int, open(0).read().split())
    first, second = sorted(A, reverse=True)[:2]
    print("\n".join(map(str, [first if a != first else second for a in A])))
    return


main()
