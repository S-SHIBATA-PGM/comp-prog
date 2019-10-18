N = int(input())
a = sorted([int(i) for i in input().split()], reverse=True)

Alice, Bob = 0, 0

for i in range(len(a)):
    if i % 2 == 0:
        Alice += a[i]
    else:
        Bob += a[i]

print(Alice - Bob)
