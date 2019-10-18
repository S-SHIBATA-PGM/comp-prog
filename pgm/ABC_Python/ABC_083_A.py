A, B, C, D = map(int, input().split())
print("Left" if C + D < A + B else "Right" if A + B < C + D else "Balanced")
