def main():
    S = [i for i in input().split("+")]
    ans = 0
    for s in S:
        for si in s[::1]:
            if si == "0":
                break
        else:
            ans += 1
    print(ans)
    return


main()

