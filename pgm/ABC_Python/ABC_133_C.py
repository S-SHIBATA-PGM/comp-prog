def main():
    L, R = map(int, input().split())
    # 2019 の相異なる素因数は 3, 673 の 2つ
    if L + 672 <= R:
        print(0)
        return
    lst = []
    for i in range(L, R + 1):
        for j in range(i + 1, R + 1):
            lst.append(i * j % 2019)
            m = i * j % 2019
            if m == 0:
                break
        if m == 0:
            break
    print(min(lst))
    return


main()
