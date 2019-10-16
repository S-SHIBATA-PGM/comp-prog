def main():

    A = [int(i) for i in open(0).read().split()[1:]]
    tmp = A[:]
    tmp.sort()
    first = tmp[-1]
    second = tmp[-2]
    print("\n".join(str(first) if a != first else str(second) for a in A))
    return


main()
