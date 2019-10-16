N, *A = map(int, open(0).read().split())
print('{:.14f}'.format(1.0 / sum([1.0 / a for a in A])))
