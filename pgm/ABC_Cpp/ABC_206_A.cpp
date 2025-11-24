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
    double N;
    cin >> N;
    const string high = ":(";
    const int price = 206;
    const string soso = "so-so";
    const double tax = 1.08;
    const string yay = "Yay!";
    double amount = floor (N * tax);
    if (amount > price) {
        cout << high << endl;
    } else if (amount < price) {
        cout << yay << endl;
    } else {
        cout << soso << endl;
    }
    return 0;
}