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
    const char x = 'x';
    const int one = 1;
    const int zero = 0;
    vector<string> v = split (S, x);
    int a = stoi (v[zero]);
    int b = stoi (v[one]);
    cout << a * b << endl;
    return 0;
}