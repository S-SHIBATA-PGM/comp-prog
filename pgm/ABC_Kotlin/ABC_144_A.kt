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
// import java.time.DayOfWeek
// import java.time.LocalTime
// import java.time.format.DateTimeFormatter
// import java.time.format.TextStyle
// import java.util.Locale
// import java.util.Scanner
// import java.util.StringTokenizer
// import java.util.TreeMap

// import kotlin.math.*

const val space: String = " "
const val one: Int = 1
const val nine: Int = 9

fun main() {
    val (A: Int, B: Int) = readln().split(space).map { it.toInt() }
    if (A <= nine && B <= nine) {
        println(A * B)
    } else {
        println(-one)
    }
    kotlin.system.exitProcess(0)
}