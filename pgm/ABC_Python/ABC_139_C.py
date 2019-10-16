def main():
    H = [int(i) for i in open(0).read().split()[1:]]
    ans = 0
    tmp = 0
    for h1, h2 in zip(H[:-1], H[1:]):
        if h1 >= h2:
            tmp += 1
        else:
            if ans < tmp:
                ans = tmp
            tmp = 0
    if ans < tmp:
        ans = tmp
    print(ans)
    return


main()
