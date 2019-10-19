N = int(input())
V = map(int, input().split())
C = map(int, input().split())
print(sum([v - c for v, c in zip(V, C) if v > c]))
