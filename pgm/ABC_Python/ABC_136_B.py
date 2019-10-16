import math
N = int(input())
ans = 0
for i in range(1, N + 1):
    digit = math.floor(math.log10(i)) + 1
    if digit % 2 == 1:
        ans += 1
print(ans)
