s = input()
K = int(input())


def main():
    st = set()

    for i in range(len(s)):
        for j in range(i + 1, min(i + K + 1, len(s) + 1)):
            st.add(s[i:j])

    l = sorted(st)

    print(l[K - 1])
    return


main()
