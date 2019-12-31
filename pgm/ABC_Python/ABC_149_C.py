def isPrime(n):
    # 素数判定
    if n == 2:
        return True
    if n < 2 or n % 2 == 0:
        return False
    m = 3
    while m * m <= n:
        if n % m == 0:
            return False
        m += 2
    return True


def main():
    X = int(input())
    while True:
        if isPrime(X):
            print(X)
            break
        X += 1
    return


main()
