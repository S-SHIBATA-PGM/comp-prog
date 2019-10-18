N = int(input())
L = sorted(map(int, input().split()))
tmp = 0
las = 0
for i in L:
    tmp += i
    las = i
print("Yes" if las < tmp - las else "No")
