def main():
    H = map(int, open(0).read().split()[:0:-1])
    pre = None
    for h in H:
        if pre is None:
            pre = h
        elif h <= pre:
            pre = h
        elif pre + 1 == h:
            continue
        else:
            # pre + 1 < h
            print("No")
            return

    print("Yes")
    return


main()
