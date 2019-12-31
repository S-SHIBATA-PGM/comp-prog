A, B, K = map(int, input().split())
print(A - min(A, K), B - min(B, K - min(A, K)))
