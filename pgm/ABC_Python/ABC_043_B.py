from collections import deque

s = input()

q = deque()

for c in s:
    if c == 'B':
        if q:
            q.pop()
    else:
        q.append(c)

for i in range(len(q)):
    print(q.popleft(), end='')

print()
