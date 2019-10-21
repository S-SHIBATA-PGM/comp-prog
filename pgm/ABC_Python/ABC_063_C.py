def main():
    N, *s = map(int, open(0).read().split())
    ans = sum(s)
    if not ans % 10:
        s.sort()
        for si in s:
            tmp = ans - si
            if tmp % 10:
                ans -= si
                break
        else:
            ans = 0
    print(ans)
    return


main()
