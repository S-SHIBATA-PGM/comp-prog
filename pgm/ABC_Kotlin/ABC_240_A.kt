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

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "
const val one: Int = 1
const val divisor: Int = 10
const val zero: Int = 0

fun main() {
    val (a: Int, b: Int) = readln().split(space).map { it.toInt() }
    var prv: Int = (a - one) % divisor
    var nxt: Int = (a + one) % divisor
    if (prv == zero) {
        prv += divisor
    }
    if (nxt == zero) {
        nxt += divisor
    }
    if (b == prv || b == nxt) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}