A = [int(i) for i in input().split()]
for i in range(0, len(A), 1):
    if A.count(A[i]) == 1:
        print(A[i])
