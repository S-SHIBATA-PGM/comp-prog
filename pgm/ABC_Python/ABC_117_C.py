import numpy as np

N, M = map(int, input().split())
X = [int(i) for i in input().split()]

# 昇順
X.sort()

# numpy array 配列の差分
D = np.diff(X)

# numpy array 降順
D = np.sort(D)[::-1]

# numpy array 先頭から N - 2 まで 合計
print(X[-1] - X[0] - np.sum(D[:N - 1]))
