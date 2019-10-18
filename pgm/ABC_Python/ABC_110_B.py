N, M, X, Y = map(int, input().split())
x = [int(i) for i in input().split()]
y = [int(i) for i in input().split()]

war = True

for Z in range(X + 1, Y + 1):
    if max(x) < Z <= min(y):
        war = False
        break

print("War" if war else "No War")
