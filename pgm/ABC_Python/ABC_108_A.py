from collections import defaultdict
K = int(input())
d = defaultdict(lambda: 0)
for i in range(1, K + 1):
    d[i % 2] += 1
print(d[0] * d[1])
