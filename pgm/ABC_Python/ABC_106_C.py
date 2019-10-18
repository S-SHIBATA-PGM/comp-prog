S = input()
K = int(input())


def main():
    for i in range(min(len(S), K)):
        if S[i] != '1':
            print(S[i])
            return

    print(1)
    return


main()
