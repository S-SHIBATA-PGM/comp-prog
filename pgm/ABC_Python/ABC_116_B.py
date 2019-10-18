def f(s):
    cnt = 0
    st = set()

    cnt += 1
    st.add(s)

    while True:
        cnt += 1

        if s % 2 == 0:
            tmp = s / 2
        else:
            tmp = 3 * s + 1

        if tmp in st:
            break

        st.add(tmp)
        s = tmp
    return cnt


s = int(input())
ans = f(s)
print(ans)
