N = int(input())
A = set()

for i in range(N):
    A.add(int(input()))

A = sorted(A, reverse=True)

print(A[1])
