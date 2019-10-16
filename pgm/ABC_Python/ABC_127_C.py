def main():
    LR = open(0).read().split()[2:]
    max_L = max(map(int, LR[::2]))
    min_M = min(map(int, LR[1::2]))
    print(min_M - max_L + 1 if max_L <= min_M else 0)
    return


main()
