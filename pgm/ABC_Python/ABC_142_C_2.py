def main():
    N, *A = map(int, open(0).read().split())
    ans = [0] * N
    for k, v in enumerate(A, 1):
        ans[v - 1] = k
    print(" ".join(map(str, ans)))
    return


if __name__ == "__main__":
    main()
