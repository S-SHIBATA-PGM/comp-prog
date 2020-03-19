#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f) (begin (ALL), end (ALL), ##__VA_ARGS__);                    \
    }) (x)

using namespace std;
using ll = int64_t;

const int num = 3;

int main() {
    char arr[num];
    cin >> arr;
    set<char> S {begin (arr), end (arr)};
    cout << (1 < S.size() ? "Yes" : "No") << endl;
    return 0;
}
