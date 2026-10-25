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

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    int N;
    cin >> N;
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int zero = 0;
    vector<int> A (N);
    REP (i, N) {
        cin >> A[i];
    }
    vector<int> tall (N, zero);
    vector<int> st;
    REP (i, N) {
        while (!st.empty() && A[st.back()] <= A[i]) {
            st.pop_back();
        }
        if (st.empty()) {
            tall[i] = -one;
        } else {
            tall[i] = st.back() + one;
        }
        st.push_back (i);
        cout << tall[i] << yn;
    }
    return 0;
}