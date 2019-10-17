a = int(input())
b = int(input())

if b < a:
    a, b = b, a

print(min(b - a, 10 - b + a))
