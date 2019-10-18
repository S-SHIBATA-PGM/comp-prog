S = input()
T = input()


def main():
    if len(S) < len(T):
        print("UNRESTORABLE")
        return

    for i in range(len(S) - len(T), - 1, -1):
        for j in range(len(T)):
            if S[i + j] != "?" and S[i + j] != T[j]:
                break
        else:
            print(S[:i].replace("?", "a") + T +
                  S[i + len(T):].replace("?", "a"))
            break
    else:
        print("UNRESTORABLE")

    return


main()
