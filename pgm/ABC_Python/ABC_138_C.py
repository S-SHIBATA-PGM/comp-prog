def main():
    input()
    v = sorted(map(int, input().split()))
    ans = v[0]
    for i in v[1:]:
        ans = (ans + i) * 0.5
    print(ans)
    return


main()
