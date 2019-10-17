import re

X = input()

while 0 < len(X):
    num = len(X)
    X = re.sub("ch$", "", X)
    X = re.sub("o$", "", X)
    X = re.sub("k$", "", X)
    X = re.sub("u$", "", X)

    if num == len(X):
        break

print("NO" if len(X) else "YES")
