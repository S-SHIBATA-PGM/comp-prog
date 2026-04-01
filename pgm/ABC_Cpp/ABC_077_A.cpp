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
    vector<string> C;
    string line;
    while (getline (cin, line)) {
        C.push_back (line);
    }
    const string YES = "YES";
    const string NO = "NO";
    vector<string> Rotation;
    for (vector<string>::reverse_iterator it = C.rbegin(); it != C.rend();
         ++it) {
        string row = *it;
        ALL (reverse, row);
        Rotation.push_back (row);
    }
    cout << (C == Rotation ? YES : NO) << endl;
    return 0;
}