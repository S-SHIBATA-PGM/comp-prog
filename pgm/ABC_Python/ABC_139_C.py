def main():
    input()
    H = map(int, input().split())
    ans = 0
    prev = int(1e9+7)
    cnt = -1
    for cur in H:
        if prev >= cur:
            cnt += 1
        else:
            if ans < cnt:
                ans = cnt
            cnt = 0
        prev = cur
    if ans < cnt:
        ans = cnt
    print(ans)
    return


main()
