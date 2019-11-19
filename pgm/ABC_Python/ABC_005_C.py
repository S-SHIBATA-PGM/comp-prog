from sys import stdin
yes = "yes"
no = "no"

read = stdin.read
readline = stdin.readline
readlines = stdin.readlines


def main():
    T = int(input())
    N = int(input())
    A = [int(i) for i in input().split()]
    M = int(input())
    B = [int(i) for i in input().split()]
    flg = True
    cnt = 0
    i = 0
    for b in B:
        while i < N:
            if b < A[i]:
                flg = False
                break
            if A[i] <= b <= A[i] + T:
                i += 1
                cnt += 1
                break
            else:
                i += 1
                continue
        if not flg:
            break
    print(yes if flg and M == cnt else no)
    return


main()

