def main():
    H, N, *A = map(int, open(0).read().split())
    print("No" if sum(A) < H else "Yes")
    return


main()
