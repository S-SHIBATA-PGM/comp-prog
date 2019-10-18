X, Y = map(int, input().split())


def main():
    A = X

    while A <= Y:
        A <<= 1

    print(A.bit_length() - X.bit_length())
    return


main()
