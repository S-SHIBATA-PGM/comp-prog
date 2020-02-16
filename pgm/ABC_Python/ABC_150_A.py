def main():
    K, X = map(int, open(0).read().split())
    print("Yes" if X <= 500 * K else "No")
    return


main()
