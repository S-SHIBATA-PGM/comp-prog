// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
import java.lang.StringBuilder

// import java.util.StringTokenizer

// import kotlin.math.*

const val fail: String = "x"
const val success: String = "o"
const val three: Int = 3
const val zero: Int = 0

fun main() {
    val N: Int = readln().toInt()
    val sb: StringBuilder = StringBuilder(N)
    for (i: Int in 1..N) {
        if (i % three != zero) {
            sb.append(success)
        } else {
            sb.append(fail)
        }
    }
    println(sb.toString())
    kotlin.system.exitProcess(0)
}