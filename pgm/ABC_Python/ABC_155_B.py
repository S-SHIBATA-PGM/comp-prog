def main():
    N, *A = map(int, open(0).read().split())
    print("DENIED" if sum(
        [1 for Ai in A if not Ai % 2 and Ai % 3 and Ai % 5]) else "APPROVED")
    return


main()
