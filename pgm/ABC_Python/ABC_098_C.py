def main():
    N, S = open(0).read().split()
    pre = S.count("E")
    cur = pre
    for Si in S:
        if pre < cur:
            cur = pre
        if Si == "E":
            pre -= 1
        else:
            pre += 1
    print(pre if pre < cur else cur)
    return


main()
