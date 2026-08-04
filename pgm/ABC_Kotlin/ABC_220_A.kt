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
    val (A: Int, B: Int, C: Int) = readln().split(space).map { it.toInt() }
    val multiple: Int = A + C - A % C
    if (A % C == zero) {
        println(A)
    } else if (multiple <= B) {
        println(multiple)
    } else {
        println(-one)
    }
    kotlin.system.exitProcess(0)
}