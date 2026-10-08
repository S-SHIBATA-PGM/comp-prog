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

const val hon: String = "hon"
const val pon: String = "pon"
const val bon: String = "bon"
const val one: Int = 1
const val two: Int = 2
const val four: Int = 4
const val five: Int = 5
const val six: Int = 6
const val seven: Int = 7
const val eight: Int = 8
const val nine: Int = 9
const val ten: Int = 10
const val zero: Int = 0

fun main() {
    val N: Int = readln().toInt()
    println(
        when (N % ten) {
            two, four, five, seven, nine -> hon
            zero, one, six, eight -> pon
            else -> bon
        }
    )
    kotlin.system.exitProcess(0)
}