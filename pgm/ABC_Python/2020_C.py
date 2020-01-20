def main():
    N, S = open(0).read().split()
    cost = S.count("E")
    ans = int(1e9 + 7)
    for si in S:
        if cost < ans:
            ans = cost
        if si == "E":
            cost -= 1
        else:
            cost += 1
    print(ans)
    return


main()
