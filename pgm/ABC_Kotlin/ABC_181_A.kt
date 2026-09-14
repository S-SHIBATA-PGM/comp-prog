// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.math.BigDecimal
// import java.math.RoundingMode
// import java.time.LocalTime
// import java.time.format.DateTimeFormatter
// import java.util.Scanner
// import java.util.StringTokenizer
// import java.util.TreeMap

// import kotlin.math.*

const val White: String = "White"
const val Black: String = "Black"
const val two: Int = 2
const val zero: Int = 0

fun main() {
    val N: Int = readln().toInt()
    if (N % two == zero) {
        println(White)
    } else {
        println(Black)
    }
    kotlin.system.exitProcess(0)
}