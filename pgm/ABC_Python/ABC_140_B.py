N = int(input())
A = [int(i) - 1 for i in input().split()]
B = [int(i) for i in input().split()]
C = [int(i) for i in input().split()]

print(sum(B) + sum([C[A[i - 1]] for i in range(1, N) if A[i] == A[i - 1] + 1]))
