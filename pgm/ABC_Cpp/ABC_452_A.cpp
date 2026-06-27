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

struct Gosekku {
    int M, D;
    auto operator<=> (const Gosekku&) const = default;
};

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    int M, D;
    cin >> M >> D;
    constexpr string_view Yes = "Yes";
    constexpr string_view No = "No";
    constexpr string_view yn = "\n";
    constexpr int M1 = 1;
    constexpr int M3 = 3;
    constexpr int M5 = 5;
    constexpr int M7 = 7;
    constexpr int M9 = 9;
    constexpr int D3 = 3;
    constexpr int D5 = 5;
    constexpr int D7 = 7;
    constexpr int D9 = 9;
    set<Gosekku> g;
    g.insert (Gosekku {M1, D7});
    g.insert (Gosekku {M3, D3});
    g.insert (Gosekku {M5, D5});
    g.insert (Gosekku {M7, D7});
    g.insert (Gosekku {M9, D9});
    cout << (g.contains (Gosekku {M, D}) ? Yes : No) << yn;
    return 0;
}