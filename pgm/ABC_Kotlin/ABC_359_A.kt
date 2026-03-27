// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.util.StringTokenizer

// import kotlin.math.*

const val Takahashi: String = "Takahashi"
const val zero: Int = 0

fun main() {
    readln()
    var S: String?
    var cnt: Int = zero
    while (readlnOrNull().also { S = it } != null) {
        if (S == Takahashi) {
            cnt++
        }
    }
    println(cnt)
    kotlin.system.exitProcess(0)
}