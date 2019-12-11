from sys import stdin

N, M = map(int, input().split())
*AB, = map(int, stdin.read().split())


def main():
    A = AB[::2]
    B = AB[1::2]
    Z = zip(A, B)
    Z = sorted(Z)
    num = 0
    yen = 0
    for a, b in Z:
        if M < num + b:
            yen += a * (M - num)
            break
        else:
            yen += a * b
            num += b
    print(yen)
    return


main()
