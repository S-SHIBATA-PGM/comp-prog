def main():
    N, M, *X = map(int, open(0).read().split())
    X.sort()
    D = [j - i for i, j in zip(X, X[1:])]
    D.sort()
    print(0 if M <= N else sum(D[:M - N]))
    return


main()
