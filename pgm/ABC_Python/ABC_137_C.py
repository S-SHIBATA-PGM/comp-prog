def main():
    s = ["".join(sorted(i)) for i in open(0).read().split()[1:]]
    ans = 0
    d = {}
    for i in s:
        if i in d:
            ans += d[i]
            d[i] += 1
        else:
            d[i] = 1
    print(ans)
    return


main()
