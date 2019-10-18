N, X = map(int, input().split())
l = []

for i in range(N):
    l.append(int(input()))

sorted(l)

print(N + (X - sum(l)) // min(l))
