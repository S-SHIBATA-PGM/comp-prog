def main():
    N, K = map(int, input().split())
    cnt = 1
    while pow(K, cnt) <= N:
        cnt += 1
    print(cnt)
    return


main()
