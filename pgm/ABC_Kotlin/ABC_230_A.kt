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

const val AGC: String = "AGC"
const val percent: String = "%"
const val d: String = "d"
const val one: Int = 1
const val three: Int = 3
const val fortyTwo: Int = 42
const val zero: Int = 0
const val fmt: String = percent + zero + three + d

fun main() {
    val N: Int = readln().toInt()
    println("$AGC${fmt.format(if (N >= fortyTwo) N + one else N)}")
    kotlin.system.exitProcess(0)
}