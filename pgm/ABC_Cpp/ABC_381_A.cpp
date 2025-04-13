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
    int N;
    string S;
    cin >> N >> S;
    const char slash = '/';
    const string Yes = "Yes";
    const string No = "No";
    const char one = '1';
    const char two = '2';
    vector<string> v;
    string s;
    for (char c : S) {
        if (c == slash) {
            v.push_back (s);
            s.clear();
        } else {
            s += c;
        }
    }
    v.push_back (s);
    if (v.size() != 2) {
        cout << No;
    } else if (v[0].length() == v[1].length()) {
        bool flg = true;
        for (char c : v[0]) {
            if (c != one) {
                flg = !flg;
                cout << No;
                break;
            }
        }
        if (flg) {
            for (char c : v[1]) {
                if (c != two) {
                    flg = !flg;
                    cout << No;
                    break;
                }
            }
        }
        if (flg) {
            cout << Yes;
        }
    } else {
        cout << No;
    }
    cout << endl;
    return 0;
}