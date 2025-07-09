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
    int K;
    cin >> K;

    // hh_mm_ss オブジェクト
    // 21時00分00秒
    const int hh = 21;
    const int mm = 0;
    const int ss = 0;
    chrono::hh_mm_ss hms {chrono::hours (hh) + chrono::minutes (mm) +
                          chrono::seconds (ss)};

    chrono::minutes additional (K);

    // hh_mm_ss を duration に変換
    chrono::seconds duration = hms.to_duration() + additional;

    // duration オブジェクトから hh_mm_ss オブジェクトを再構築
    chrono::hh_mm_ss<chrono::seconds> time =
        chrono::hh_mm_ss<chrono::seconds> (duration);

    // tm 構造体に変換
    // count() は chrono::duration の値を整数として取り出す関数
    tm tm {};
    tm.tm_hour = static_cast<int> (time.hours().count());
    tm.tm_min = static_cast<int> (time.minutes().count());

    // 変換指定子 [%H]
    // 時間を表す10進数（00～23）に置き換わる。[tm_hour]
    // 変換指定子 [%M]
    // 分を表す10進数（00～59）に置き換わる。[tm_min]
    // 変換指定子 [%R]
    // “%H:%M”と等価な時刻表現に置き換わる。[tm_hour，tm_min]
    // hh:mm (max 5 char)
    int charsize_R = sizeof "hh:mm";
    char local_str_R[charsize_R];
    strftime (local_str_R, charsize_R, "%R", &tm);

    cout << local_str_R << endl;
    return 0;
}