S = input()
print(
    "Yes" if sum(
        [1 if i % 2 == 0 and S[i] in "RUD" else
         1 if i % 2 != 0 and S[i] in "LUD" else 0
         for i in range(len(S))]) == len(S)
    else "No")

