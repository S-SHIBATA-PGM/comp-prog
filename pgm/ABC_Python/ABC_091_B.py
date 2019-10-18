N = int(input())
st = set()
s = []

for i in range(N):
    tmp = input()
    st.add(tmp)
    s.append(tmp)

M = int(input())
t = []

for i in range(M):
    t.append(input())

ans = -100
tmp = 0

for x in st:
    tmp = s.count(x)
    tmp -= t.count(x)
    ans = max(ans, tmp)

print(ans if 0 <= ans else 0)
