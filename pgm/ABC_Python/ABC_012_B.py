cln = ':'

N = int(input())

print(str(N // 3600).rjust(2, '0')
      + cln
      + str(N % 3600 // 60).rjust(2, '0')
      + cln
      + str(N % 60).rjust(2, '0'))
