def main():
    N, K = map(int, input().split())
    if K % 2:
        print((N // K) ** 3)
    elif N // K * K + K // 2 <= N:
        print((N // K) ** 3 + (N // K + 1) ** 3)
    else:
        print(2 * (N // K) ** 3)
    return


main()
