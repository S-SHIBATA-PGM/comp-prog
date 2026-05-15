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
    string N;
    cin >> N;
    const string SAME = "SAME";
    const string DIFFERENT = "DIFFERENT";
    const int one = 1;
    cout << (ALL (unordered_set<char>, N).size() == one ? SAME : DIFFERENT)
         << endl;
    return 0;
}