dreamer = "dreamer"
eraser = "eraser"
dream = "dream"
erase = "erase"


def main():
    S = input()

    while len(S):
        lens = len(S)
        if S[-len(dreamer):] == dreamer:
            S = S[:-len(dreamer)]
        elif S[-len(eraser):] == eraser:
            S = S[:-len(eraser)]
        elif S[-len(dream):] == dream:
            S = S[:-len(dream)]
        elif S[-len(erase):] == erase:
            S = S[:-len(erase)]
        if lens == len(S):
            print("NO")
            return
    print("YES")
    return


main()

