def main():
    X = int(input())
    ans = 0
    P = 100
    while P < X:
        ans += 1
        P += P // 100
    print(ans)
    return


main()
