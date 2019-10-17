from collections import defaultdict

N = int(input())
S = defaultdict(lambda: 0)

for i in range(N):
    S[input()] += 1

# value 降順
S = sorted(S.items(), key=lambda x: -x[1])
print(S[0][0])
