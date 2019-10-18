class Main:
    def __init__(self):
        self.N = int(input())

    def dfs(self, ret, cur, f1, f2, f3):
        if self.N < cur:
            return ret

        ret += 1 if f1 and f2 and f3 else 0

        ret = self.dfs(ret, cur * 10 + 7, True, f2, f3)
        ret = self.dfs(ret, cur * 10 + 5, f1, True, f3)
        ret = self.dfs(ret, cur * 10 + 3, f1, f2, True)

        return ret

    @staticmethod
    def main():
        main = Main()
        print(main.dfs(0, 0, False, False, False))


Main.main()
