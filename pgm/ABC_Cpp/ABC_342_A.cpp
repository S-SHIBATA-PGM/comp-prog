#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f)(begin (ALL), end (ALL), ##__VA_ARGS__);                     \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    string S;
    cin >> S;
    const int only = 1;
    int size = S.size();
    map<char, int> map;
    REP (i, size) {
        map[S.at (i)]++;
    }
    for (auto itr = map.begin(); itr != map.end(); ++itr) {
        if (itr->second == only) {
            cout << S.find (itr->first) + 1 << endl;
        }
    }
    return 0;
}