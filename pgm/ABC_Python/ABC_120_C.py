def main():
    S = input()
    cnt = S.count("0")
    print(2 * min(cnt, len(S) - cnt))
    return


main()
