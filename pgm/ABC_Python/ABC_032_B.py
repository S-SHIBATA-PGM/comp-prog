s = input()
k = int(input())

st = set()

if k <= len(s):
    for i in range(len(s) - k + 1):
        st.add(s[i:i + k])

print(len(st))
