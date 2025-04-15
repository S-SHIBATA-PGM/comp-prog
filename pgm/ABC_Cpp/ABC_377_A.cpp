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
    const string Yes = "Yes";
    const string No = "No";
    const char A = 'A';
    const char B = 'B';
    const char C = 'C';
    const char* s = S.c_str();
    vector<char> v (S.length());
    v[0] = s[0];
    v[1] = s[1];
    v[2] = s[2];
    cout << (any_of (v.begin(), v.end(), [] (char x) { return x == A; }) &&
                     any_of (v.begin(), v.end(),
                             [] (char x) { return x == B; }) &&
                     any_of (v.begin(), v.end(), [] (char x) { return x == C; })
                 ? Yes
                 : No)
         << endl;
    return 0;
}