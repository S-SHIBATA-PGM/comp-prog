def main():
    L, R = map(int, input().split())
    # 60 の相異なる素因数は 3, 673 の 2つ
    if L + 672 <= R:
        print(0)
        return
    print(min(i * j % 2019 for i in range(L, R + 1)
              for j in range(i + 1, R + 1)))
    return


main()
