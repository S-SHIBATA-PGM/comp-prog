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

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    int N;
    cin >> N;
    const int one = 1;
    const int zero = 0;
    int i = zero;
    vector<int> list;
    while (N > zero) {
        if ((N & one) == one) {
            list.push_back (one << i);
        }
        N >>= one;
        i++;
    }
    ALL (sort, list);
    cout << list.size() << endl;
    for (int x : list) {
        cout << x << endl;
    }
    return 0;
}