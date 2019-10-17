N = int(input())

s = []

for i in range(N):
    s.append(list(input()))

t = [['' for i in range(N)] for j in range(N)]

for i in range(N):
    for j in range(N):
        t[j][N - i - 1] = s[i][j]

for i in range(N):
    print(''.join(t[i]))
