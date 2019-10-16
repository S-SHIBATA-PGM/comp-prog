def main():
    v = sorted([int(i) for i in open(0).read().split()[1:]])
    ans = v[0]
    for i in v[1:]:
        ans = (ans + i) * 0.5
    print(ans)
    return


main()
