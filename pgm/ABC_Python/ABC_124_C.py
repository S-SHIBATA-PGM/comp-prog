def main():
    S = input()
    cnt = S[::2].count("0") + S[1::2].count("1")
    print(min(cnt, len(S) - cnt))
    return

a
main()
