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

vector<string> split (const string& s, char delim) {
    vector<string> elems;
    stringstream ss (s);
    string item;
    while (getline (ss, item, delim)) {
        if (!item.empty()) {
            elems.push_back (item);
        }
    }
    return elems;
}

int main() {
    string S;
    cin >> S;
    vector<string> v = split (S, '.');
    cout << v.at (v.size() - 1) << endl;
    return 0;
}