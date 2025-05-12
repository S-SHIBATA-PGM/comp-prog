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
    cin >> N;
    const int seven = 7;
    int A[seven * N];
    REP (i, seven * N) {
        cin >> A[i];
    }
    const int zero = 0;
    const string blank = "";
    const string space = " ";
    const string Yes = "Yes";
    const string No = "No";
    string s = blank;
    int sum = 0;
    int j = 0;
    int next = 0;
    for (int i = 0; i < N; i++) {
        next = j + seven;
        for (; j < next; j++) {
            sum += A[j];
        }
        cout << s;
        cout << sum;
        s = space;
        sum = zero;
    }
    cout << endl;
    return 0;
}