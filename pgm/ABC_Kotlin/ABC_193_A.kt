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
const val unity:Int = 1
const val hundredPercent: Int = 100

fun main() {
    val (A: Double, B: Double) = readln().split(space).map { it.toDouble() }
    println((unity - B / A) * hundredPercent)
    kotlin.system.exitProcess(0)
}