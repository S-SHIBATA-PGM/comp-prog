def main():
    N = int(input())
    S = list(input())
    ans = []
    a = ord("A")
    z = ord("Z")
    for s in S:
        if ord(s) + N <= z:
            ans.append(chr(ord(s) + N))
        else:
            ans.append(chr(ord(s) + N - z + a - 1))
    print("".join(ans))
    return


main()
