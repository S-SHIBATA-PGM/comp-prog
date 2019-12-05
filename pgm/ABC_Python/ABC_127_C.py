def main():
    LR = open(0).read().split()[2:]
    MAX_L = max(map(int, LR[::2]))
    MIN_R = min(map(int, LR[1::2]))
    print(MIN_R - MAX_L + 1 if MAX_L <= MIN_R else 0)
    return


main()
