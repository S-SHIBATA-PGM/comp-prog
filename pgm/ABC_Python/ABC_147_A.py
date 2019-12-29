A = map(int, open(0).read().split())
print("win" if sum(A) <= 21 else "bust")
