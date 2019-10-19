A, B = map(int, input().split())
print(0 if A <= 5 else B // 2 if 6 <= A <= 12 else B)
