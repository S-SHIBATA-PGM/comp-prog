def main():
    N, S = open(0).read().split()
    pre = S.count("E")
    cur = pre
    for Si in S:
        if cur < pre:
            pre = cur
        if Si == "E":
            cur -= 1
        else:
            cur += 1
    print(pre if pre < cur else cur)
    return


main()

