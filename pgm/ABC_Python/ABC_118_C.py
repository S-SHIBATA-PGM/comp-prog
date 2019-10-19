N = int(input())
A = [int(i) for i in input().split()]

A.sort()

num = 0

if N == A.count(A[0]):
    num = 1
else:
    l = A
    x = []

    while True:
        x = []
        x.append(l[0])
        for i in range(1, len(l)):
            if 0 < l[i] % l[0]:
                x.append(l[i] % l[0])

        if len(x) == 1:
            break

        x.sort()

        l = x

print(A[0] if num == 1 else x[0])
