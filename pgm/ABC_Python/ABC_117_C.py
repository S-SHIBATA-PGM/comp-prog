N, M = map(int, input().split())
X = list(set([int(i) for i in input().split()]))

X.sort()

D = [X[i+1] - X[i] for i in range(M - 1)]

D.sort()

print(0 if M <= N else sum(D[:M-N]))
