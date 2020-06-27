#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f) (begin (ALL), end (ALL), ##__VA_ARGS__);                    \
    }) (x)

using namespace std;
using ll = int64_t;

vector<vector<int>> combination (vector<int> nums, int k) {
    vector<vector<int>> ret;
    if (k == 1) {
        REP (i, (signed)nums.size())
        ret.push_back (vector<int> (1, nums[i]));
    } else {
        REP (i, (signed)nums.size() - k + 1) {
            vector<int> cur (&nums[i + 1], &nums[nums.size()]);
            vector<vector<int>> rows = combination (cur, k - 1);
            REP (j, (signed)rows.size()) {
                rows[j].insert (rows[j].begin(), nums[i]);
                ret.push_back (rows[j]);
            }
        }
    }
    return ret;
}

int main() {
    int N;
    cin >> N;
    vector<int> d (N, 0);
    REP (i, N) cin >> d[i];
    int ans = 0;
    for (auto&& lst : combination (d, 2)) {
        ans += lst[0] * lst[1];
    }
    cout << ans << endl;
    return 0;
}