def main():
    N = int(input())
    S = ""
    while N:
        if N % 2:
            N -= 1
            S = "1" + S
        else:
            S = "0" + S
        N //= -2
    print(S if S else "0")
    return


main()
