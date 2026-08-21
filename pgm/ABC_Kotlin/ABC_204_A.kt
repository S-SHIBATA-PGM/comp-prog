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
const val three: Int = 3

fun main() {
    val (x: Int, y: Int) = readln().split(space).map { it.toInt() }
    if (x == y) {
        println(x)
    } else {
        println(three - x - y)
    }
    kotlin.system.exitProcess(0)
}