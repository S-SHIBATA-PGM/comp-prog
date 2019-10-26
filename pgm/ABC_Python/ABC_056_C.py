def main():
    X = int(input())
    accum = 1
    ans = 1
    while accum < X:
        ans += 1
        accum += ans
    print(ans)
    return


main()
