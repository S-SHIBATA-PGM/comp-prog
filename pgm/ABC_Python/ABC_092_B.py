def eat():
    i = 0

    while i * A + 1 <= D:
        i += 1

    return i


N = int(input())
D, X = map(int, input().split())

ans = 0

for i in range(N):
    A = int(input())
    ans += eat()

print(ans + X)
