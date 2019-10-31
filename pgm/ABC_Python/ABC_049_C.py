import re


def main():
    S = input()
    lens = len(S)
    while len(S):
        S = re.sub("dreamer$", "", S)
        S = re.sub("eraser$", "", S)
        S = re.sub("dream$", "", S)
        S = re.sub("erase$", "", S)
        if lens == len(S):
            print("NO")
            return
    print("YES")
    return


main()

