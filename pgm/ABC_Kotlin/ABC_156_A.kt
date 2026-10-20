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
const val ten: Int = 10
const val hundred: Int = 100

fun main() {
    val (N: Int, R: Int) = readln().split(space).map { it.toInt() }
    if (N >= ten) {
        println(R)
    } else {
        println(R + hundred * (ten - N))
    }
    kotlin.system.exitProcess(0)
}