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

const val one: Long = 1L

fun Int.factorial(): Long = (1..this).fold(1L) { acc, i -> acc * i }

fun main() {
    val S: String = readln()
    val len: Int = S.length
    val cnt: Collection<Int> = S.groupingBy { it }.eachCount().values
    val divisor: Long = cnt.fold(one) { accum, cnt -> accum * cnt.factorial() }
    println(len.factorial() / divisor)
    kotlin.system.exitProcess(0)
}