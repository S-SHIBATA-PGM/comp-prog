def main():
    N, *B = map(int, open(0).read().split())
    print(B[0] + B[-1] + sum(min(b1, b2) for b1, b2 in zip(B[:-1], B[1:])))
    return


main()
