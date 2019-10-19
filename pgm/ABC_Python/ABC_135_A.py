A, B = map(int, input().split())
print("IMPOSSIBLE" if (A - B) / 2 != (A - B) // 2 else abs(A - (A - B) // 2))
