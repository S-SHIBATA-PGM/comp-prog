a, b, c, d = map(int, input().split())
AB = abs(a - b)
BC = abs(b - c)
CA = abs(c - a)
print("Yes" if CA <= d else "Yes" if AB <= d and BC <= d else "No")