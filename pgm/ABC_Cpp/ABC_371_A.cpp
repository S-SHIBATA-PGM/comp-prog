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

const string gt = ">";
const string A = "A";
const string B = "B";
const string C = "C";

void rank_ABC (string s, string a, string b, vector<string>& ABC) {
    vector<string>::iterator itra = ALL (find, ABC, a);
    vector<string>::iterator itrb = ALL (find, ABC, b);
    if (gt == s) {
        if (itra < itrb) {
            ABC.erase (itrb);
            ABC.insert (itra, b);
        }
    } else {
        if (itra > itrb) {
            ABC.erase (itra);
            ABC.insert (itrb, a);
        }
    }
    return;
}

int main() {
    string S[3];
    cin >> S[0] >> S[1] >> S[2];
    vector<string> ABC;
    ABC = {A, B, C};
    rank_ABC (S[0], A, B, ABC);
    rank_ABC (S[1], A, C, ABC);
    rank_ABC (S[2], B, C, ABC);
    cout << ABC[1] << endl;
    return 0;
}