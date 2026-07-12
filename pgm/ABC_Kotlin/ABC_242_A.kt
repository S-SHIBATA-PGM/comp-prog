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

const val dot: String = "."
const val percent: String = "%"
const val f: String = "f"
const val space: String = " "
const val twelve: Int = 12
const val dOne: Double = 1.0
const val dZero: Double = 0.0
const val fmt: String = percent + dot + twelve + f

fun main() {
    val (A: Int, B: Int, C: Int, X: Int) = readln().split(space).map { it.toInt() }
    val prob: Double =
            if (X <= A) {
                dOne
            } else if (X <= B) {
                C.toDouble() / (B - A).toDouble()
            } else {
                dZero
            }
    println(String.format(fmt, prob))
    kotlin.system.exitProcess(0)
}