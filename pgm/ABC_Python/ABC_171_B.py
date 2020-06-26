def main():
    N, K = map(int, input().split())
    *p, = map(int, input().split())
    p.sort()
    print(sum(p[0:K]))
    return


main()
