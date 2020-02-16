def main():
    H, A = map(int, open(0).read().split())
    print(H // A + 1 if H % A else H // A)
    return


main()
