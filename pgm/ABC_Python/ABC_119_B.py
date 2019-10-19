N = int(input())

ans = 0.0

for i in range(N):
    xi, ui = map(str, input().split())
    ans += float(xi) if ui == "JPY" else 380000.0 * float(xi)

print(ans)
