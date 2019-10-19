from collections import Counter
S = Counter(list(input()))
print("Yes" if len(S) == 2 and S.most_common()[0][1] == 2 else "No")
