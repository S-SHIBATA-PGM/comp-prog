S = input()
ACGT = {"A", "C", "G", "T"}

ans = 0
tmp = 0

for s in S:
    if s in ACGT:
        tmp += 1
        if ans < tmp:
            ans = tmp
    else:
        tmp = 0

print(ans)
