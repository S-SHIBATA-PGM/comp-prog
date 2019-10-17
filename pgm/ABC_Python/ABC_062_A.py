x, y = map(int, input().split())
a = {1, 3, 5, 7, 8, 10, 12}
b = {4, 6, 9, 11}
c = {2}
print("Yes" if x in a and y in a else "Yes" if x in b and y in b else "Yes" if x in c and y in c else "No")
