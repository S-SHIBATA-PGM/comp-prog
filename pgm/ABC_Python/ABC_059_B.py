A = input()
B = input()

num = len(B) if len(A) < len(B) else len(A)

A = A.rjust(num, '0')
B = B.rjust(num, '0')

print("GREATER" if B < A else "LESS" if A < B else "EQUAL")
