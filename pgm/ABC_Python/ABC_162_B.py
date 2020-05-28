def calc(n, N):
    return (n + (N // n * n)) * (N // n) // 2


def main():
    N = int(input())
    print(calc(1, N) - calc(3, N) - calc(5, N) + calc(15, N))
    return


main()
