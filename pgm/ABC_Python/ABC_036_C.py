def coordComp(arr):
    # 座標圧縮 Coordinate Compression
    return list(map(
        {v: k for k, v in enumerate(sorted(set(arr)))}.__getitem__, arr))


def main():
    N, *a = map(int, open(0).read().split())
    lst = coordComp(a)
    print("\n".join(map(str, lst)))
    return


main()

