a = "atcoder"

S = input()
T = input()

flg = True

for s, t in zip(S, T):
    if s == t:
        continue

    if s == '@' and t != '@' and t in a:
        continue
    elif s != '@' and t == '@' and s in a:
        continue
    else:
        flg = False
        break

print("You can win" if flg else "You will lose")
