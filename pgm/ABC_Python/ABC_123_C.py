def main():
    N, A, B, C, D, E = map(int, open(0).read().split())
    print(-(-N // min(A, B, C, D, E)) + 4)
    return


main()
