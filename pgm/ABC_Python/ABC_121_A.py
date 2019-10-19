H, W = map(int, input().split())
h, w = map(int, input().split())


def main():
    print(H * W - h * W - w * H + h * w)
    return


main()
