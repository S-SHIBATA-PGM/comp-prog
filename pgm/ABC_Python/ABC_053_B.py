s = input()

num = len(s)

for i in range(num - 1, -1, -1):
    if s[i] == 'Z':
        break

for j in range(0, num):
    if s[j] == 'A':
        break

print(i - j + 1)
