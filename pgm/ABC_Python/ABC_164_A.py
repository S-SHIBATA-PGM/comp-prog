def main():
    S, W = map(int, input().split())
    print("safe" if W < S else "unsafe")
    return


main()
