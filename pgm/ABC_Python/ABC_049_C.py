dreamer = "dreamer"
eraser = "eraser"
dream = "dream"
erase = "erase"


def main():
    S = input()

    while len(S):
        lens = len(S)
        if S[lens - len(dreamer):] == dreamer:
            S = S[: lens - len(dreamer)]
        elif S[lens - len(eraser):] == eraser:
            S = S[:lens - len(eraser)]
        elif S[lens - len(dream):] == dream:
            S = S[:lens - len(dream)]
        elif S[lens - len(erase):] == erase:
            S = S[:lens - len(erase)]
        if lens == len(S):
            print("NO")
            return
    print("YES")
    return


main()

