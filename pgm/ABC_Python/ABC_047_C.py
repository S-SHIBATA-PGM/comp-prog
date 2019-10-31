def main():
    S = input()
    ans = -1
    pre = ""
    for s in S:
        if pre != s:
            ans += 1
            pre = s
    print(ans)
    return


main()

