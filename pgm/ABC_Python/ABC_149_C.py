def isPrime(n):
    # 素数判定
    if n < 2:
        return False
    for i in range(2, n + 1):
        if n < i ** 2:
            break
        if n % i == 0:
            return False
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
