from itertools import combinations

N, *d = map(int, open(0).read().split())
print(sum(x * y for x, y in combinations(d, 2)))
