def main():
    N = int(input())
    ans = "No"
    flg = False
    for i in range(10):
        for j in range(10):
            if N == i * j:
                ans = "Yes"
                flg = True
                break
        if flg:
            break
    print(ans)
    return


main()
