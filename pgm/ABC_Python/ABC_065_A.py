X, A, B = map(int, input().split())
print("delicious" if B - A <= 0 else "safe" if B - A <= X else "dangerous")
