from collections import deque

SA = deque(list(input()))
SB = deque(list(input()))
SC = deque(list(input()))

turn = 'a'

while True:
    if turn == 'a' and len(SA) == 0:
        ans = 'A'
        break
    elif turn == 'b' and len(SB) == 0:
        ans = 'B'
        break
    elif turn == 'c' and len(SC) == 0:
        ans = 'C'
        break

    if turn == 'a':
        turn = SA.popleft()
    elif turn == 'b':
        turn = SB.popleft()
    else:
        turn = SC.popleft()

print(ans)
