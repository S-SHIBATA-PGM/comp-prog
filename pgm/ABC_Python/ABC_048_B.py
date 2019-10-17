def f(n, d):
    if n == -1:
        return 0
    return n // d + 1


a, b, x = map(int, input().split())

print(f(b, x) - f(a - 1, x))
