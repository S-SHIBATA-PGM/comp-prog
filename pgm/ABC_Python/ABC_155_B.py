def main():
    N, *A = map(int, open(0).read().split())
    for Ai in A:
        if not Ai % 2 and Ai % 3 and Ai % 5:
            print("DENIED")
            return
    print("APPROVED")
    return


main()
