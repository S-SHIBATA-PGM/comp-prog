A, B = map(int, input().split())
print(2 * A if A == B else 2 * max(A, B) - 1)
