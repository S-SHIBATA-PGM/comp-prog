n, m = map(int, input().split())

n = n - 12 if 12 < n else n

dn = 360 / 12 * n + 30 / 60 * m
dm = 360 / 60 * m

d = max(dn, dm) - min(dn, dm)

print(min(d, 360 - d))
