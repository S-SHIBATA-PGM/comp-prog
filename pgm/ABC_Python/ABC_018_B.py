S = list(input())
N = int(input())

for i in range(N):
    l, r = map(int, input().split())

    T = S[l - 1:r]

    for j in range(len(T)):
        f = j
        t = len(T) - 1 - j

        if t <= f:
            break

        T[f], T[t] = T[t], T[f]

    T.extend(S[r:])
    S = S[:l - 1]
    S.extend(T)

print(''.join(S))
