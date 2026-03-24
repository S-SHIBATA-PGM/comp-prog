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

struct DateTime {
    chrono::year_month_day date;
    chrono::hh_mm_ss<chrono::seconds> time;
    // time point
    chrono::sys_time<chrono::seconds> tp() const {
        return chrono::sys_days {date} + time.to_duration();
    }
};

int main() {
    int M;
    cin >> M;
    // 現在のロケールを取得
    locale current_locale ("");
    // ロケール情報を表示
    // cout << "現在のロケール: " << current_locale.name() << endl;
    // プログラム全体のロケールを設定
    locale::global (locale ("C.UTF-8"));
    // chrono::system_clock::time_point
    // ナノ秒単位
    chrono::system_clock::time_point now = chrono::system_clock::now();
    // days point
    chrono::sys_days dp = floor<chrono::days> (now);
    chrono::year_month_day today {dp};
    const int y = (int)today.year();
    const int y1 = 1;
    const int M1 = 1;
    const int M12 = 12;
    const int d1 = 1;
    const int d30 = 30;
    const int h0 = 0;
    const int m0 = 0;
    const int s0 = 0;
    DateTime this_year {
        chrono::year (y) / chrono::month (M12) / chrono::day (d30),
        chrono::hh_mm_ss {chrono::hours (M) + chrono::minutes (m0) +
                          chrono::seconds (s0)}};
    DateTime next_year {
        chrono::year (y + y1) / chrono::month (M1) / chrono::day (d1),
        chrono::hh_mm_ss {chrono::hours (h0) + chrono::minutes (m0) +
                          chrono::seconds (s0)}};
    chrono::seconds duration = next_year.tp() - this_year.tp();
    // プログラム全体のロケールを元に戻す。
    locale::global (current_locale);
    cout << duration_cast<chrono::hours> (duration).count() << endl;
    return 0;
}