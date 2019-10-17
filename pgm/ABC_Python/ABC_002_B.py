a = "aeiou"

W = input()

for i in range(len(W)):
    if W[i] not in a:
        print(W[i], end='')

print()
