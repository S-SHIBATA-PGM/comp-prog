from collections import defaultdict

N = int(input())
S = defaultdict(lambda: 0)

for i in range(N):
    S[input()] += 1

for k, v in sorted(S.items(), key=lambda x: -x[1]):
    print(k)
    break
