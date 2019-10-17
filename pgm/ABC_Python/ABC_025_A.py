S = str(input())
N = int(input())
l = []
for i in range(0, len(S), 1):
    x = S[i]
    for j in range(0, len(S), 1):
        l.append(S[i] + S[j])
l = sorted(l)
print(l[N - 1])
