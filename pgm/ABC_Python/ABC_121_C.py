from sys import stdin


def main():
    N, M = map(int, input().split())
    *AB, = map(int, stdin.read().split())
    A = AB[::2]
    B = AB[1::2]
    num = 0
    yen = 0
    for a, b in sorted(zip(A, B)):
        if M < num + b:
            yen += a * (M - num)
            break
        else:
            yen += a * b
            num += b
    print(yen)
    return


main()
