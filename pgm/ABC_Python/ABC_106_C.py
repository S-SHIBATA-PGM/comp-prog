def main():
    S = input()
    K = int(input())
    for i in range(min(len(S), K)):
        if S[i] != '1':
            print(S[i])
            return
    print(1)
    return


main()
