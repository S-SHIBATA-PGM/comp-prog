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

const val T: String = "T"
const val F: String = "F"
const val M: String = "M"
const val space: String = " "
const val zero: Int = 0

fun main() {
    val (V: Int, A: Int, B: Int, C: Int) = readln().split(space).map { it.toInt() }
    var v: Int = V
    var turn: String = T
    while (v >= zero) {
        if (turn == T) {
            v -= A
            turn = F
        } else if (turn == F) {
            v -= B
            turn = M
        } else {
            v -= C
            turn = T
        }
    }
    println(turn)
    kotlin.system.exitProcess(0)
}