def main():
    N = int(input())
    S = input()
    alp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    print(S.translate(str.maketrans(alp, alp[N:] + alp[:N])))
    return


main()
