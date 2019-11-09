# どのように入っても
any = "9"
# 2行3列
rowB = 2
clmB = 3
# 3行2列
rowC = 3
clmC = 2
# 途中結果を記録する
d = dict()
b = [[0] * clmB for i in range(rowB)]
c = [[0] * clmC for i in range(rowC)]
# first player と second player の 合計 score
# b と c の合計で一定
TOTAL_SCORE = 0


def getIndex(s, i):
    try:
        ret = s.index(any, i)
    except ValueError:
        ret = -1
    return ret


def anySearch(s, i):
    foundIndex = getIndex(s, i)
    return (s.count(any), foundIndex)


def getPoint(board, row, clm):
    # get first player point
    if row == rowB:
        ret = sum([b[i][j]
                   for j in range(clm)
                   for i in range(row)
                   if board[i * 3 + j] == board[(i + 1) * 3 + j]])
    else:
        ret = sum([c[i][j]
                   for j in range(clm)
                   for i in range(row)
                   if board[i * 3 + j] == board[i * 3 + j + 1]])
    return ret


def calc(board):
    ret = sum([b[i][j]
               for j in range(clmB)
               for i in range(rowB)
               if board[i * 3 + j] == board[(i + 1) * 3 + j]])
    ret += sum([c[i][j]
                for j in range(clmC)
                for i in range(rowC)
                if board[i * 3 + j] == board[i * 3 + j + 1]])
    return ret


def search(board):
    # 既に点数計算が完了している
    # if board in d:
    #     return d[board]
    # any があるか
    # その登場回数、左からの最初の位置を調べる
    tmp = anySearch(board, 0)
    times = tmp[0]
    idx = tmp[1]
    if not times:
        # すべての手番の終了
        # 点数計算
        return calc(board)
    # 次の手番
    turn = (times - 1) % 2
    score = -1
    for i in range(times):
        # 現在の board はそのまま残す
        copy = list(board)
        # 左から any を手番で埋める
        copy[idx] = str(turn)
        tmp = "".join(copy)
        if tmp not in d:
            cur = search(tmp)
        else:
            cur = d[tmp]
        if not turn:
            # first
            if score < cur:
                first = cur
                score = cur
        else:
            # second
            if score < TOTAL_SCORE - cur:
                # first player の score のみ記録
                first = cur
                score = TOTAL_SCORE - cur
        # for でスコア算出した idx の次を探す
        idx = anySearch(board, idx + 1)[1]
    # 途中結果を記録
    d[board] = first
    return first


def main():
    global b, c, TOTAL_SCORE
    for i in range(rowB):
        b[i][0], b[i][1], b[i][2] = map(int, input().split())
    for i in range(rowC):
        c[i][0], c[i][1] = map(int, input().split())
    TOTAL_SCORE = sum(map(sum, b)) + sum(map(sum, c))
    # board
    # start position
    # 0 first player
    # 1 second player
    # 9 any
    # 9 9 9 9 9 9 9 9 9
    board = any * int(any)
    # 9手目 first player からさかのぼって探索
    first = search(board)
    print(first)
    print(TOTAL_SCORE - first)


main()

