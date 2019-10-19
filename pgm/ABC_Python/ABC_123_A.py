input = open(0).read
a, b, c, d, e, k = map(int, input().split())
print("Yay!" if max(a, b, c, d, e) - min(a, b, c, d, e) <= k else ":(")
