S = list(input())
N = int(input())

for i in range(N):
    l, r = map(int, input().split())

    for j in range(l - 1, r):
        f = j
        t = r - 1 - (j - (l - 1))

        if t <= f:
            break

        S[f], S[t] = S[t], S[f]

print(''.join(S))
