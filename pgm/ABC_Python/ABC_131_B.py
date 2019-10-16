N, L = map(int, input().split())
a = [L + i for i in range(N)]
print(sum(a) - min(a, key=abs))
