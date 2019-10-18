X, Y, Z = map(int, input().split())

num = 0

for i in range(1, 100000):
    if X < i * Y + (i - 1) * Z + 2 * Z:
        break
    num = i

print(num)
