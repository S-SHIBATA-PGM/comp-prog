def main():
    N, A, B = map(int, input().split())
    dv = N // (A + B)
    rm = N % (A + B)
    print(A * dv + min(A, rm))
    return


main()
