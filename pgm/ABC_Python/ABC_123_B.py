input = open(0).read
A = [int(i) for i in input().split()]
L = []

for a in A:
    if 0 < a % 10:
        tmp = 10 - a % 10
        L.append(tmp)

L.sort(reverse=True)
print(sum(A) + sum(L[1:]))
