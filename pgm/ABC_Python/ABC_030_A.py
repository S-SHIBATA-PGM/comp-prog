A, B, C, D = map(int, input().split())
print("AOKI" if B / A < D / C else "TAKAHASHI" if D / C < B / A else "DRAW")
