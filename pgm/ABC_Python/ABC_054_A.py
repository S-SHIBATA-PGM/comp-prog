A, B = map(int, input().split())
A = A + 13 if A == 1 else A
B = B + 13 if B == 1 else B
print("Alice" if B < A else "Draw" if A == B else "Bob")
