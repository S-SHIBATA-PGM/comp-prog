#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return f (begin (ALL), end (ALL), ##__VA_ARGS__);                      \
    }) (x)

using namespace std;
using ll = int64_t;

int getNext (int n) {
    constexpr int ten = 10;
    constexpr int zero = 0;
    int digit_sum = zero;
    while (n > zero) {
        int digit = n % ten;
        digit_sum += digit * digit;
        n /= ten;
    }
    return digit_sum;
}

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    int N;
    cin >> N;
    constexpr string_view Yes = "Yes";
    constexpr string_view No = "No";
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    unordered_set<int> visited;
    while (N != one && visited.find (N) == visited.end()) {
        visited.insert (N);
        N = getNext (N);
    }
    cout << (N == one ? Yes : No) << yn;
    return 0;
}