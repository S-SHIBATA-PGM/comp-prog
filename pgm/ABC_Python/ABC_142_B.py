N, K, *h = map(int, open(0).read().split())
print(len([1 for i in h if K <= i]))
