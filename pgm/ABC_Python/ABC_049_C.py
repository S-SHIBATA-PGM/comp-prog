dreamer = "dreamer"
eraser = "eraser"
dream = "dream"
erase = "erase"


def main():
    S = input()
    i = len(S)
    while 0 < i:
        pre = i
        if S[i - len(dreamer):i] == dreamer:
            i -= len(dreamer)
        if S[i - len(eraser):i] == eraser:
            i -= len(eraser)
        if S[i - len(dream):i] == dream:
            i -= len(dream)
        if S[i - len(erase):i] == erase:
            i -= len(erase)
        if pre == i:
            print("NO")
            return
    print("YES")
    return


main()

