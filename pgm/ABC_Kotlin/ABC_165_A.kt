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

const val space: String = " "
const val OK: String = "OK"
const val NG: String = "NG"

fun main() {
    val K: Int = readln().toInt()
    val (A: Int, B: Int) = readln().split(space).map { it.toInt() }
    if (A <= (B / K) * K) {
        println(OK)
    } else {
        println(NG)
    }
    kotlin.system.exitProcess(0)
}