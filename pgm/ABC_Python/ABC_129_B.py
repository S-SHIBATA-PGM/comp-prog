from sys import stdin
from numpy import cumsum

lines = stdin.readlines

W = [int(i) for i in lines()[1].split()]

total = sum(W)

W = cumsum(W)

ans = 1000000007

for w in W:
    ans = min(ans, abs(total - 2 * w))

print(ans)
