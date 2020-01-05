def main():
    N = int(input())
    S = ""
    base = 2
    while N:
        S = str(N % base) + S
        N -= N % base
        N //= -base
    print(S if S else "0")
    return


main()