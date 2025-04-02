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
    const string cross = "x";
    S = S + cross;
    long sl = S.length(), cl = cross.length();
    string::size_type pos = 0, prev = 0;
    int i = 0;
    int num[2];
    for (; pos < sl && (pos = S.find (cross, pos)) != string::npos;
         prev = (pos += cl)) {
        num[i++] = stoi (S.substr (prev, pos - prev));
    }
    cout << num[0] * num[1] << endl;
    return 0;
}