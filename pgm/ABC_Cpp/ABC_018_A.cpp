#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return f (begin (ALL), end (ALL), ##__VA_ARGS__);                      \
    }) (x)

using namespace std;
using ll = int64_t;

struct Mame {
    string abc;
    int point;
    int rank;
    Mame (string abc, int point, int rank)
        : abc (abc)
        , point (point)
        , rank (rank) {
    }
};

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    int A, B, C;
    cin >> A >> B >> C;
    constexpr string_view strA = "A";
    constexpr string_view strB = "B";
    constexpr string_view strC = "C";
    constexpr string_view yn = "\n";
    constexpr int zero = 0;
    vector<Mame> list;
    list.push_back (Mame (string (strA), A, zero));
    list.push_back (Mame (string (strB), B, zero));
    list.push_back (Mame (string (strC), C, zero));
    ALL (sort, list, [] (const Mame& m1, const Mame& m2) {
        if (m1.point != m2.point) {
            return m1.point > m2.point;
        }
        return m1.abc > m2.abc;
    });
    for (size_t i = zero; i < list.size(); i++) {
        list[i].rank = static_cast<int> (i) + 1;
    }
    ALL (sort, list,
         [] (const Mame& m1, const Mame& m2) { return m1.abc < m2.abc; });
    for (const Mame& m : list) {
        cout << m.rank << yn;
    }
    return 0;
}