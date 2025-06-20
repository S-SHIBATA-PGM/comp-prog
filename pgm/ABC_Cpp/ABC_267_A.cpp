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

map<string, int> dow;

// dow["Monday"] == 1
// dow["Tuesday"] == 2
// dow["Wednesday"] == 3
// dow["Thursday"] == 4
// dow["Friday"] == 5
// dow["Saturday"] == 6
// dow["Sunday"] == 7
void get_day_of_week_by_code() {
    bool continue_flg = true;

    // 現在のロケールを取得
    locale current_locale ("");

    // ロケール情報を表示
    // cout << "現在のロケール: " << current_locale.name() << endl;

    // プログラム全体のロケールを設定
    locale::global (locale ("C.UTF-8"));

    //
    // 現在時間(unixエポック)を取得する。
    //
    // 1. 現在のtime_pointを取得:
    auto tp = chrono::system_clock::now();

    const int zero = 0;
    const int one = 1;
    const char c_zero = '0';

    while (continue_flg) {
        // 2. time_pointからdurationを取得:
        auto duration = tp.time_since_epoch();

        // 3. durationからunixエポック (ミリ秒) を取得:
        auto ms =
            chrono::duration_cast<chrono::milliseconds> (duration).count();
        // cout << "現在時間 (unixエポックミリ秒): " << ms << endl;
        //  or durationからunixエポック(秒)を取得:
        // auto s = chrono::duration_cast<chrono::seconds> (duration).count();
        // cout << "現在時間 (unixエポック秒): " << s << endl;

        //
        // unixエポック (ミリ秒) からISO世界標準時間文字列を取得する。
        //
        // long int sec = ms / 1000;
        // char isoStr[sizeof "2021-01-31T23:59:59.000Z"];
        // strftime (isoStr, sizeof isoStr, "%FT%T", gmtime (&sec));
        // int delta = ms - (sec * 1000);
        // sprintf (isoStr, "%s.%03dZ", isoStr, delta);
        // cout << "ISO世界標準時間文字列: " << isoStr << endl;

        //
        // unixエポック (ミリ秒) からローカル時間文字列を取得する。
        //
        long int sec1 = ms / 1000;
        struct tm* timeinfo;
        timeinfo = localtime (&sec1);

        // strftime:
        // timeptrポインタが指す日付時間情報をformatポインタが指す書式に編集した
        // 結果の文字列をsで指定されたポインタが指す領域に格納する。
        // strftime (local_str, charsize, "%Y/%m/%d(%A)%H:%M:%S", timeinfo);

        // 変換指定子 [%u]
        // JIS X 0301が規定する暦週の中の日の序数を表す10進数
        // (1～7)。月曜日は1。
        // x (max 1 char)
        // [tm_wday]
        int charsize_u = sizeof "x";
        char local_str_u[charsize_u];
        strftime (local_str_u, charsize_u, "%u", timeinfo);
        // cout << "ロケールの簡略化されていない曜日の名前: " << local_str_u
        //      << endl;

        // 変換指定子 [%A]
        // ロケールの簡略化されていない曜日の名前。
        // xxxxxxxxx (max 9 char) (Wednesday)
        // [tm_wday]
        int charsize_A = sizeof "xxxxxxxxx";
        char local_str_A[charsize_A];
        strftime (local_str_A, charsize_A, "%A", timeinfo);
        // cout << "ロケールの簡略化されていない曜日の名前: " << local_str_A
        //      << endl;

        if (!dow.contains (local_str_A)) {
            int local_int_u = local_str_u[zero] - c_zero;
            dow[local_str_A] = local_int_u;
            tp += chrono::days (one);
        } else {
            continue_flg = false;
        }
    }
    // プログラム全体のロケールを元に戻す。
    locale::global (current_locale);
    return;
}

int main() {
    string S;
    cin >> S;
    const string Saturday = "Saturday";
    get_day_of_week_by_code();
    cout << dow[Saturday] - dow[S] << endl;
    return 0;
}