W, a, b = map(int, input().split())

if (b < a):
    a, b = b, a

print(b - a - W if a + W < b else 0)
