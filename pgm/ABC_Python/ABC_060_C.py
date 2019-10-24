def main():
    T, *tn = map(int, open(0).read().split()[1:])
    print(tn[-1] + T - sum(t2 - t1 - T
                           for t1, t2
                           in zip(tn[0:], tn[1:])
                           if t2 - t1 > T))
    return


main()
