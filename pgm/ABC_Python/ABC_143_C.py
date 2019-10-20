def main():
    N, S = open(0).read().split()
    print(sum(1 for x, y in zip(S[:], S[1:]) if x != y) + 1)
    return


main()
