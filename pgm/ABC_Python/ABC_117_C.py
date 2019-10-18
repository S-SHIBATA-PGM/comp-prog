import numpy as np

N, M = map(int, input().split())
X = list(set(map(int, input().split())))

X.sort()

D = np.diff(X)

D.sort()

print(0 if M <= N else np.sum(D[:M-N]))
