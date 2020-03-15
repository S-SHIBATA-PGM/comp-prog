def main():
    N, K = map(int, input().split())
    cnt = 1
    while K ** cnt <= N:
        cnt += 1
    print(cnt)
    return


main()
