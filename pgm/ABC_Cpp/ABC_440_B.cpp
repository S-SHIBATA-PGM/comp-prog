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

struct Horse {
    int id;
    int time;
};

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    int N;
    cin >> N;
    constexpr string_view space = " ";
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int two = 2;
    constexpr int zero = 0;
    vector<Horse> horse (N);
    REP (i, N) {
        horse[i].id = i + one;
        cin >> horse[i].time;
    }
    ALL (sort, horse,
         [] (const Horse& a, const Horse& b) { return a.time < b.time; });
    cout << horse[zero].id << space << horse[one].id << space << horse[two].id
         << yn;
    return 0;
}