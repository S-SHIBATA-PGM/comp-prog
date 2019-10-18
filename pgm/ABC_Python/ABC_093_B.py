A, B, K = map(int, input().split())

s = set()

for i in range(A, min(A + K, B + 1)):
    s.add(i)

for i in range(B, max(A - 1, B - K), -1):
    s.add(i)

s = sorted(s)

for i in s:
    print(i)
