def main():
    # 下、右、上、左
    dyx = [(1, 0), (0, 1), (-1, 0), (0, -1)]
    H, W = map(int, input().split())
    s = ["." * (W + 2)]
    s += ["." + input() + "." for i in range(H)]
    s.append("." * (W + 2))
    for y in range(1, H + 1):
        for x in range(1, W + 1):
            if "." == s[y][x]:
                continue
            for dy, dx in dyx:
                if "#" == s[y + dy][x + dx]:
                    break
            else:
                print("No")
                return
    print("Yes")
    return


main()
