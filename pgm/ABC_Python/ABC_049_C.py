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
        if S[-len(eraser):] == eraser:
            S = S[:-len(eraser)]
        if S[-len(dream):] == dream:
            S = S[:-len(dream)]
        if S[-len(erase):] == erase:
            S = S[:-len(erase)]
        if lens == len(S):
            print("NO")
            return
    print("YES")
    return


main()

