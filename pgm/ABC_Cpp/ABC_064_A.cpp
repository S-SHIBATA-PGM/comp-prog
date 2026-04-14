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
    const string YES = "YES";
    const string NO = "NO";
    const string blank = "";
    const int three = 3;
    const int four = 4;
    vector<string> rgb (three);
    for (string& s : rgb)
        cin >> s;
    cout << (stoi (ALL (accumulate, rgb, blank)) % four ? NO : YES) << endl;
    return 0;
}