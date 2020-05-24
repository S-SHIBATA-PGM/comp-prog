def main():
    N = input()
    N = int(N[len(N) - 1])
    ans = ""
    if N in {2, 4, 5, 7, 9}:
        ans = "hon"
    elif N in {0, 1, 6, 8}:
        ans = "pon"
    else:
        ans = "bon"
    print(ans)
    return


main()
