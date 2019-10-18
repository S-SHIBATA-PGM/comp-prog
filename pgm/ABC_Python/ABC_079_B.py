def getLucas(N):
    if N == 0:
        return 2
    if N == 1:
        return 1

    l = [2, 1]

    for i in range(2, N + 1):
        l.append(l[i - 1] + l[i - 2])

    return l[N]


N = int(input())
print(getLucas(N))
