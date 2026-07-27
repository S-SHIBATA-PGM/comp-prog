// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.LocalTime
// import java.time.format.DateTimeFormatter
// import java.util.Scanner
// import java.util.StringTokenizer

// import kotlin.math.*

const val space: String = " "
const val one: Int = 1
const val zero: Int = 0

fun main() {
    var (N: Int, K: Int, A: Int) = readln().split(space).map { it.toInt() }
    if ((K + A - one) % N == zero) {
        println(N)
    } else {
        println((K + A - one) % N)
    }
    kotlin.system.exitProcess(0)
}